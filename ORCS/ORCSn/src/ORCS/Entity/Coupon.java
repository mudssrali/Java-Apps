package ORCS.Entity;

import java.util.Date;

public class Coupon
{
    private int ID;
    private Boolean Status;
    private Date IssueDate =null;
    private Date ExpiryDate = null;
    private String Email;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public void setStatus(Boolean status) {
        Status = status;
    }

    public void setIssueDate(Date issueDate) {
        IssueDate = issueDate;
    }

    public Boolean getStatus() {
        return Status;
    }

    public Date getIssueDate() {
        return IssueDate;
    }

    public Date getExpiryDate() {
        return ExpiryDate;
    }

    public String getEmail() {
        return Email;
    }

    public void setExpiryDate(Date expiryDate) {
        ExpiryDate = expiryDate;
    }

    public void setEmail(String email) {
        Email = email;
    }
}
