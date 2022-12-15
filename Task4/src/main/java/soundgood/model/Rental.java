package soundgood.model;

public class Rental implements RentalDTO {
    private int rental_id;
    private int student_id;
    private int instrument_id;
    private String date;
    private String status;

    public Rental(int rental_id, int student_id, int instrument_id, String date, int status) {
        this.instrument_id = instrument_id;
        this.rental_id = rental_id;
        this.student_id = student_id;
        this.date = date;
        if (status == 1) {
            this.status = "yes";
        } else {
            this.status = "no";
        }
    }

    public Integer getRentalID() {
        return rental_id;
    }

    public Integer getRentalStudent() {
        // TODO Auto-generated method stub
        return student_id;
    }

    public Integer getRentalInstrument() {
        // TODO Auto-generated method stub
        return instrument_id;
    }

    public Integer getRentalTerminated() {
        // TODO Auto-generated method stub
        return rental_id;
    }

    public String getRentalDate() {
        // TODO Auto-generated method stub
        return date;
    }

    public String toString() {
        StringBuilder stringRepresentation = new StringBuilder();
        stringRepresentation.append("Rental: [");
        stringRepresentation.append("ID: ");
        stringRepresentation.append(rental_id);
        stringRepresentation.append(", student_id: ");
        stringRepresentation.append(student_id);
        stringRepresentation.append(", instrument_id: ");
        stringRepresentation.append(instrument_id);
        stringRepresentation.append(", date: ");
        stringRepresentation.append(date);
        stringRepresentation.append(", terminated: ");
        stringRepresentation.append(status);
        stringRepresentation.append("]");
        return stringRepresentation.toString();
    }

}