package models;

import java.util.Date;

public class Booking {
    private int id;
    private String bookingNumber;
    private int userId;
    private int carId;
    private Date pickupDate;
    private Date returnDate;
    private String driver; 

    // Default Constructor
    public Booking() {
    }

    public Booking(int id, String bookingNumber, int userId, int carId, Date pickupDate, Date returnDate, String driver) {
        this.id = id;
        this.bookingNumber = bookingNumber;
        this.userId = userId;
        this.carId = carId;
        this.pickupDate = pickupDate;
        this.returnDate = returnDate;
        this.driver = driver;
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookingNumber() {
        return bookingNumber;
    }

    public void setBookingNumber(String bookingNumber) {
        this.bookingNumber = bookingNumber;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getCarId() {
        return carId;
    }

    public void setCarId(int carId) {
        this.carId = carId;
    }

    public Date getPickupDate() {
        return pickupDate;
    }

    public void setPickupDate(Date pickupDate) {
        this.pickupDate = pickupDate;
    }

    public Date getReturnDate() {
        return returnDate;
    }

    public void setReturnDate(Date returnDate) {
        this.returnDate = returnDate;
    }

    public String getDriver() {
        return driver;
    }

    public void setDriver(String driver) {
        this.driver = driver;
    }

    // To String (for debugging)
    @Override
    public String toString() {
        return "Booking{" +
                "id=" + id +
                ", bookingNumber='" + bookingNumber + '\'' +
                ", userId=" + userId +
                ", carId=" + carId +
                ", pickupDate=" + pickupDate +
                ", returnDate=" + returnDate +
                ", driver='" + driver + '\'' +
                '}';
    }
}
