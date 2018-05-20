package ORCS.Entity;

import java.util.Date;

public class Company
{
    private String Name;
    private Boolean Status;
    private String Location;
    private String Email;
    private Date RegistrationStartDate = null;
    private Date RegistrationEndDate =null;

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public Boolean getStatus() {
        return Status;
    }

    public void setStatus(Boolean status) {
        Status = status;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String location) {
        Location = location;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public Date getRegistrationStartDate() {
        return RegistrationStartDate;
    }

    public void setRegistrationStartDate(Date registrationStartDate) {
        RegistrationStartDate = registrationStartDate;
    }

    public Date getRegistrationEndDate() {
        return RegistrationEndDate;
    }

    public void setRegistrationEndDate(Date registrationEndDate) {
        RegistrationEndDate = registrationEndDate;
    }

}
