package ORCS.Entity;

import java.io.Serializable;

public class Customer implements Serializable
{
    private int ID;
    String FirstName;
    String LastName;
    String Email;
    String Contact;
    String Address;
    String City;
    String Country;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }
    
    public String getFirstname() {
        return this.FirstName;
    }

    public void setFirstname(String firstName) {
        this.FirstName = firstName;
    }

    public String getLastname() {
        return LastName;
    }

    public void setLastname(String lastName) {
        this.LastName = lastName;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getContact() {
        return Contact;
    }

    public void setContact(String contact) {
        this.Contact = contact;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        this.Address = address;
    }

    public String getCity() {
        return City;
    }

    public void setCity(String city) {
        this.City = city;
    }

    public String getCountry() {
        return Country;
    }

    public void setCountry(String country) {
        this.Country = country;
    }
    
}
