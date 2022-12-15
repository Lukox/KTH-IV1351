package soundgood.model;

public class RentalException extends Exception {

    /**
     * Create a new instance thrown because of the specified reason.
     *
     * @param reason Why the exception was thrown.
     */
    public RentalException(String reason) {
        super(reason);
    }

    public RentalException(String reason, Throwable rootCause) {
        super(reason, rootCause);
    }
}
