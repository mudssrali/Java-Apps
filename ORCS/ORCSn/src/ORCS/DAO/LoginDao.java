package ORCS.DAO;

import ORCS.Entity.Login;
import ORCS.GenericDao.GenericDao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class LoginDao extends GenericDao
{
    // Login class objects list
    ArrayList<Login> LoginList = new ArrayList<Login>();

    // constructor
    public LoginDao() { }

    // This method is responsible for inserting record
    // in Login table and SysLogin table simultaneous

    public Boolean InsertRecord(Login login) {

        Boolean InsertSuccessLogin = true;
        
        String InsertQueryLog = "INSERT INTO orcsdatabase.syslogin(firstname, lastname,usertype, username,userpassword, userstatus, email, contact) VALUES(?,?,?,?,?,?,?,?)";
        try
        {
            // inserting into SysLogin table
            PreparedStatement Stmtlog = con.prepareStatement(InsertQueryLog);
            Stmtlog.setString(1, login.getFirstname());
            Stmtlog.setString(2, login.getLastname());
            Stmtlog.setString(3, "admin");
            Stmtlog.setString(4, login.getUsername());
            Stmtlog.setString(5, login.getPassword());
            Stmtlog.setBoolean(6, true);
            Stmtlog.setString(7,login.getEmail());
            Stmtlog.setString(8,login.getContact());

            if (Stmtlog.execute()==false)
            {
                InsertSuccessLogin = false;
            } else
            {
                InsertSuccessLogin = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return InsertSuccessLogin;

    }
    public Login getLoginList(String username)
    {
        Login ObjLogin = new Login();
        String GetDataQuery = "SELECT firstname, lastname,contact, email, username, userpassword,usertype FROM orcsdatabase.syslogin WHERE username=?";
        try
        {
            PreparedStatement Stmt = con.prepareStatement(GetDataQuery);
            Stmt.setString(1,username);
            ResultSet resultSet = Stmt.executeQuery();
            while(resultSet.next())
            {
                ObjLogin.setFirstname(resultSet.getString(1));
                ObjLogin.setLastname(resultSet.getString(2));
                ObjLogin.setContact(resultSet.getString(3));
                ObjLogin.setEmail(resultSet.getString(4));
                ObjLogin.setUsername(resultSet.getString(5));
                ObjLogin.setPassword(resultSet.getString(6));
                ObjLogin.setType(resultSet.getString(7));
                // adding Login objects to array list
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return ObjLogin;
    }
}
