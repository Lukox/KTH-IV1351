/*
 * The MIT License (MIT)
 * Copyright (c) 2020 Leif Lindbäck
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction,including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so,subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package soundgood.integration;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.xdevapi.SelectStatement;

import soundgood.model.Instrument;
import soundgood.model.Rental;

/**
 * This data access object (DAO) encapsulates all database calls in the bank
 * application. No code outside this class shall have any knowledge about the
 * database.
 */
public class SoundgoodDAO {
    /* INSTRUMENT */
    private static final String INSTRUMENT_TABLE_NAME = "instrument";
    private static final String INSTRUMENT_PK_COLUMN_NAME = "instrument_id";
    private static final String INSTRUMENT_TYPE_COLUMN_NAME = "instrument_type";
    private static final String INSTRUMENT_BRAND_COLUMN_NAME = "brand";
    private static final String INSTRUMENT_PRICE_COLUMN_NAME = "price";

    /* RENTAL */
    private static final String RENTAL_TABLE_NAME = "rental";
    private static final String RENTAL_PK_COLUMN_NAME = "rental_id";
    private static final String RENTAL_TIME_COULMN_NAME = "time_rented";
    private static final String RENTAL_TERMINATED_COLUMN_NAME = "rental_terminated";
    private static final String RENTAL_FK_STUDENT_COLUMN_NAME = "student_id";
    private static final String RENTAL_FK_INSTRUMENT_COLUMN_NAME = INSTRUMENT_PK_COLUMN_NAME;

    public Connection connection;
    private PreparedStatement createRental;
    private PreparedStatement terminateRental;
    private PreparedStatement findInstrumentsByStatus;
    private PreparedStatement findInstrumentsByTypeAndStatus;
    private PreparedStatement findRentalsByInstrumentForUpdate;
    private PreparedStatement findRentals;
    private PreparedStatement findRentalsByStudentAndStatus;

    /**
     * Constructs a new DAO object connected to the bank database.
     */
    public SoundgoodDAO() throws SoundgoodDBException {
        try {
            connectToSoundgoodDB();
            prepareStatements();
        } catch (ClassNotFoundException | SQLException exception) {
            throw new SoundgoodDBException("Could not connect to datasource.", exception);
        }
    }

    /**
     * Creates a new rental.
     *
     * @param student_id    The student renting the instrument.
     * @param instrument_id The instrument to rent.
     * @throws SoundgoodDBException If failed to create rental.
     */
    public void createRental(Integer student_id, Integer instrument_id) throws SoundgoodDBException {
        String failureMsg = "Could not create rental for student_id: " + student_id + " and instrument: "
                + instrument_id + ".";
        try {
            createRental.setInt(1, student_id);
            createRental.setInt(2, instrument_id);
            int updatedRows = createRental.executeUpdate();
            if (updatedRows != 1) {
                handleException(failureMsg, null);
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        }
    }

    /**
     * Terminates renntal with specified ID.
     *
     * @param rentalID The rental to terminate.
     * @throws SoundgoodDBException If unable to terminate the specified rental.
     */
    public void terminateRental(int rentalID) throws SoundgoodDBException {
        String failureMsg = "Could not terminate rental: " + rentalID;
        try {
            terminateRental.setInt(1, rentalID);
            int updatedRows = terminateRental.executeUpdate();
            if (updatedRows != 1) {
                handleException(failureMsg, null);
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        }
    }

    /**
     * Retrieves all available instruments.
     *
     * @return A list with all available instruments. The list is empty if there are
     *         no
     *         instruments available.
     * @throws SoundgoodDBException If failed to search for available instruments.
     * @throws SQLException
     */

    public List<Instrument> listInstruments() throws SoundgoodDBException, SQLException {
        ResultSet result = null;
        String failureMsg = "Could not list instruments.";
        List<Instrument> instruments = new ArrayList<>();
        try {
            findInstrumentsByStatus.setInt(1, 0);
            result = findInstrumentsByStatus.executeQuery();
            while (result.next()) {
                instruments.add(new Instrument(result.getInt(INSTRUMENT_PK_COLUMN_NAME),
                        result.getString(INSTRUMENT_TYPE_COLUMN_NAME),
                        result.getString(INSTRUMENT_BRAND_COLUMN_NAME),
                        result.getInt(INSTRUMENT_PRICE_COLUMN_NAME)));
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        } finally {
            closeResultSet(failureMsg, result);
        }
        return instruments;
    }

    /**
     * Retrieves all available instruments of given type.
     *
     * @return A list with all available instruments. The list is empty if there are
     *         no
     *         instruments available.
     * @throws SoundgoodDBException If failed to search for available instruments.
     */
    public List<Instrument> listInstrumentsByType(String type) throws SoundgoodDBException, SQLException {
        ResultSet result = null;
        String failureMsg = "Could not list instruments.";
        List<Instrument> instruments = new ArrayList<>();
        try {
            findInstrumentsByTypeAndStatus.setInt(1, 0);
            findInstrumentsByTypeAndStatus.setString(2, type);
            result = findInstrumentsByTypeAndStatus.executeQuery();
            while (result.next()) {
                instruments.add(new Instrument(result.getInt(INSTRUMENT_PK_COLUMN_NAME),
                        result.getString(INSTRUMENT_TYPE_COLUMN_NAME),
                        result.getString(INSTRUMENT_BRAND_COLUMN_NAME),
                        result.getInt(INSTRUMENT_PRICE_COLUMN_NAME)));
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        } finally {
            closeResultSet(failureMsg, result);
        }
        return instruments;
    }

    // reads all rentals
    public List<Rental> showRentals() throws SoundgoodDBException {
        String failureMsg = "Could not show rentals";
        List<Rental> rentals = new ArrayList<>();
        ResultSet result = null;
        try {
            result = findRentals.executeQuery();
            while (result.next()) {
                rentals.add(new Rental(result.getInt(RENTAL_PK_COLUMN_NAME),
                        result.getInt(RENTAL_FK_STUDENT_COLUMN_NAME),
                        result.getInt(RENTAL_FK_INSTRUMENT_COLUMN_NAME),
                        result.getString(RENTAL_TIME_COULMN_NAME),
                        result.getInt(RENTAL_TERMINATED_COLUMN_NAME)));
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        } finally {
            closeResultSet(failureMsg, result);
        }
        return rentals;
    }

    // finds rentals by instrument
    public List<Rental> findRentalsByInstrument(Integer instrument_id) throws SoundgoodDBException {
        String failureMsg = "Could not find rentals";
        List<Rental> rentals = new ArrayList<>();
        ResultSet result = null;
        try {
            findRentalsByInstrumentForUpdate.setInt(1, instrument_id);
            result = findRentalsByInstrumentForUpdate.executeQuery();
            while (result.next()) {
                rentals.add(new Rental(result.getInt(RENTAL_PK_COLUMN_NAME),
                        result.getInt(RENTAL_FK_STUDENT_COLUMN_NAME),
                        result.getInt(RENTAL_FK_INSTRUMENT_COLUMN_NAME),
                        result.getString(RENTAL_TIME_COULMN_NAME),
                        result.getInt(RENTAL_TERMINATED_COLUMN_NAME)));
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        } finally {
            closeResultSet(failureMsg, result);
        }
        return rentals;
    }

    // finds all of student's rentals
    public List<Rental> findCurrentRentalsByStudent(Integer student_id) throws SoundgoodDBException {
        String failureMsg = "Could not find rentals";
        List<Rental> rentals = new ArrayList<>();
        ResultSet result = null;
        try {
            findRentalsByStudentAndStatus.setInt(1, student_id);
            findRentalsByStudentAndStatus.setInt(2, 0);
            result = findRentalsByStudentAndStatus.executeQuery();
            while (result.next()) {
                rentals.add(new Rental(result.getInt(RENTAL_PK_COLUMN_NAME),
                        result.getInt(RENTAL_FK_STUDENT_COLUMN_NAME),
                        result.getInt(RENTAL_FK_INSTRUMENT_COLUMN_NAME),
                        result.getString(RENTAL_TIME_COULMN_NAME),
                        result.getInt(RENTAL_TERMINATED_COLUMN_NAME)));
            }
            connection.commit();
        } catch (SQLException sqle) {
            handleException(failureMsg, sqle);
        } finally {
            closeResultSet(failureMsg, result);
        }
        return rentals;
    }

    /**
     * Commits the current transaction.
     * 
     * @throws SoundgoodDBException If unable to commit the current transaction.
     */
    public void commit() throws SoundgoodDBException {
        try {
            connection.commit();
        } catch (SQLException e) {
            handleException("Failed to commit", e);
        }
    }

    private void connectToSoundgoodDB() throws ClassNotFoundException, SQLException {
        connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/soundgood", "postgres", "postgres");
        connection.setAutoCommit(false);
    }

    private void prepareStatements() throws SQLException {

        createRental = connection.prepareStatement("INSERT INTO " + RENTAL_TABLE_NAME
                + "(" + RENTAL_FK_STUDENT_COLUMN_NAME + ", " + RENTAL_TIME_COULMN_NAME
                + ", " + RENTAL_TERMINATED_COLUMN_NAME + ", " + RENTAL_FK_INSTRUMENT_COLUMN_NAME
                + ") VALUES (?, NOW(), 0::bit, ?)");

        terminateRental = connection.prepareStatement("UPDATE " + RENTAL_TABLE_NAME
                + " SET " + RENTAL_TERMINATED_COLUMN_NAME + " = 1::bit"
                + " WHERE " + RENTAL_PK_COLUMN_NAME + " = ?");

        findInstrumentsByStatus = connection.prepareStatement("SELECT i." + INSTRUMENT_PK_COLUMN_NAME
                + ", i." + INSTRUMENT_TYPE_COLUMN_NAME + ", i." + INSTRUMENT_BRAND_COLUMN_NAME
                + ", i." + INSTRUMENT_PRICE_COLUMN_NAME + " FROM "
                + INSTRUMENT_TABLE_NAME + " AS i WHERE NOT EXISTS (SELECT r." + RENTAL_FK_INSTRUMENT_COLUMN_NAME
                + " FROM " + RENTAL_TABLE_NAME + " AS r WHERE i." + INSTRUMENT_PK_COLUMN_NAME + " = r."
                + RENTAL_FK_INSTRUMENT_COLUMN_NAME + " AND r." + RENTAL_TERMINATED_COLUMN_NAME + " = ?::bit)");

        findInstrumentsByTypeAndStatus = connection.prepareStatement("SELECT i." + INSTRUMENT_PK_COLUMN_NAME
                + ", i." + INSTRUMENT_TYPE_COLUMN_NAME + ", i." + INSTRUMENT_BRAND_COLUMN_NAME
                + ", i." + INSTRUMENT_PRICE_COLUMN_NAME + " FROM "
                + INSTRUMENT_TABLE_NAME + " AS i WHERE NOT EXISTS (SELECT r." + RENTAL_FK_INSTRUMENT_COLUMN_NAME
                + " FROM " + RENTAL_TABLE_NAME + " AS r WHERE i." + INSTRUMENT_PK_COLUMN_NAME + " = r."
                + RENTAL_FK_INSTRUMENT_COLUMN_NAME + " AND r." + RENTAL_TERMINATED_COLUMN_NAME
                + " = ?::bit) AND i." + INSTRUMENT_TYPE_COLUMN_NAME + " = ?::\"valid_instrument_type\"");

        findRentalsByStudentAndStatus = connection
                .prepareStatement("SELECT * FROM rental WHERE "
                        + RENTAL_FK_STUDENT_COLUMN_NAME + " = ? AND " + RENTAL_TERMINATED_COLUMN_NAME
                        + " = ?::bit FOR UPDATE");

        findRentals = connection.prepareStatement("SELECT * FROM " + RENTAL_TABLE_NAME);

        findRentalsByInstrumentForUpdate = connection.prepareStatement(
                "SELECT * FROM " + RENTAL_TABLE_NAME + " WHERE " + RENTAL_FK_INSTRUMENT_COLUMN_NAME
                        + " = ? FOR UPDATE");

    }

    private void handleException(String failureMsg, Exception cause) throws SoundgoodDBException {
        String completeFailureMsg = failureMsg;
        try {
            connection.rollback();
        } catch (SQLException rollbackExc) {
            completeFailureMsg = completeFailureMsg + ". Also failed to rollback transaction because of: "
                    + rollbackExc.getMessage();
        }

        if (cause != null) {
            throw new SoundgoodDBException(failureMsg, cause);
        } else {
            throw new SoundgoodDBException(failureMsg);
        }
    }

    private void closeResultSet(String failureMsg, ResultSet result) throws SoundgoodDBException {
        try {
            result.close();
        } catch (Exception e) {
            throw new SoundgoodDBException(failureMsg + " Could not close result set.", e);
        }
    }

}
