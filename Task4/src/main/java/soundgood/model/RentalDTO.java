package soundgood.model;

/**
 * Specifies a read-only view of an instrument.
 */
public interface RentalDTO {
    /**
     * @return The rental ID.
     */
    public Integer getRentalID();

    /**
     * @return The rental student.
     */
    public Integer getRentalStudent();

    /**
     * @return The rental instrument.
     */
    public Integer getRentalInstrument();

    /**
     * @return The rental status.
     */
    public Integer getRentalTerminated();

    /**
     * @return The rental date.
     */
    public String getRentalDate();
}
