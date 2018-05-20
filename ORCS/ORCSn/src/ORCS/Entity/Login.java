package ORCS.Entity;

import java.io.Serializable;

public class Login implements Serializable
{
    //private int ID;
    private String firstname;
    private String lastname;
    private String type;
    private String username;
    private String password;
    private String email;
    private String contact;

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    //private Boolean status;
    public Login()
    {
      //  status = true;
       // type="admin";
    }

    public String getType()
    {
        return type;
    }
    public void setType(String type){this.type = type;}
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstName) {
        firstname = firstName;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastName) {
        lastname = lastName;
    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
