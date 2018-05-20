package ORCS.DAO;

import ORCS.Entity.Staff;
import ORCS.GenericDao.GenericDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class StaffDao extends GenericDao{
    // Staff class objects list
    ArrayList<Staff> StaffList = new ArrayList<Staff>();

    // constructor
    public StaffDao() { }

    // This method is responsible for inserting record
    // in Staff table and SysLogin table simultaneous

    public Boolean InsertRecord(Staff staff)
    {
        Boolean InsertSuccessStaff = false;
        Boolean InsertSuccessSysLogin = false;

        String InsertQuery = "INSERT INTO orcsdatabase.staff (name, contact, email,address,location, dob,bloodgroup,designation) VALUES (?,?,?,?,?,?,?,?)";
        String InsertQueryLog = "INSERT INTO orcsdatabase.syslogin(firstname, lastname,usertype, username,userpassword,userstatus,staff_designation) VALUES(?,?,?,?,?,?,?)";
        try
        {
            PreparedStatement Stmt = con.prepareStatement(InsertQuery);
            // inserting into Staff table

            Stmt.setString(1,staff.getFirstName()+" "+staff.getLastName());
            Stmt.setString(2,staff.getContact());
            Stmt.setString(3,staff.getEmail());
            Stmt.setString(4,staff.getAddress());
            Stmt.setString(5,staff.getCity()+", "+staff.getCountry());
            Stmt.setString(6,staff.getDoB());
            Stmt.setString(7,staff.getBloodGroup());
            Stmt.setString(8,staff.getDesignation());

            // inserting into SysLogin table

            PreparedStatement Stmtlog =con.prepareStatement(InsertQueryLog);
            Stmtlog.setString(1,staff.getFirstName());
            Stmtlog.setString(2,staff.getLastName());
            Stmtlog.setString(3,"Staff");
            Stmtlog.setString(4,staff.getUsername());
            Stmtlog.setString(5,staff.getPassword());
            Stmtlog.setString(6,staff.getDesignation());
            Stmt.setBoolean(7,staff.getStatus());
            if(Stmt.execute())
            {
                InsertSuccessStaff = true;
            }
            else
            {
                InsertSuccessStaff = false;
            }
            if(Stmtlog.execute())
            {
                InsertSuccessSysLogin = true;
            }
            else
            {
                InsertSuccessSysLogin = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning insertion success flag
        return (InsertSuccessStaff && InsertSuccessSysLogin);
    }

    // This method is responsible for deleting record
    // in Staff table and SysLogin table simultaneous
    // on the bases of given user_id or Staff id

    public Boolean DeleteCRecord(int id)
    {
        Boolean DeleteSuccessStaff = false;
        Boolean DeleteSuccessSyslogin = false;

        String DeleteQuery = "DELETE FROM orcsdatabase.staff WHERE id=?";
        String DeleteQueryLog = "DELETE FROM orcsdatabase.syslogin WHERE id=?";

        try
        {
            // deleting record from Staff
            PreparedStatement Stmt = con.prepareStatement(DeleteQuery);
            Stmt.setInt(1,id);

            // deleting record from syslog
            PreparedStatement StmtLog = con.prepareStatement(DeleteQueryLog);
            Stmt.setInt(1,id);

            if(Stmt.executeUpdate()==1)
            {
                DeleteSuccessStaff = true;
            }
            else
            {
                DeleteSuccessStaff = false;
            }
            if(StmtLog.executeUpdate()==1)
            {
                DeleteSuccessSyslogin = true;
            }
            else
            {
                DeleteSuccessSyslogin = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning combine deletion success flag
        return(DeleteSuccessStaff && DeleteSuccessSyslogin);
    }

    public ArrayList<Staff> getStaffList()
    {

        String GetDataQuery = "SELECT * FROM orcsdatabase.staff";
        try
        {
            Statement Stmt = con.createStatement();
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                // creating new object to hold the record
                Staff ObjCust = new Staff();

                // parsing Staff name to get first name and last name
                ObjCust.setFirstName(resultSet.getString(1)
                        .substring(0,resultSet.getString(1)
                                .indexOf(' ')));
                ObjCust.setLastName(resultSet.getString(1)
                        .substring(resultSet.getString(1)
                                .indexOf(' ')+1));

                ObjCust.setContact(resultSet.getString(2));
                ObjCust.setEmail(resultSet.getString(3));
                ObjCust.setAddress(resultSet.getString(4));

                //parsing location to get city and country name
                ObjCust.setCity(resultSet.getString(5)
                        .substring(0,resultSet.getString(5)
                                .indexOf(',')));
                ObjCust.setCountry(resultSet.getString(5)
                        .substring(resultSet.getString(5)
                                .indexOf(','+1)));

                // adding Staff objects to array list
                StaffList.add(ObjCust);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return StaffList;
    }

    // overloading getStaffsList method to get a Staff data by id
    public ArrayList<Staff> getStaffList(int id)
    {
        String GetDataQuery = "SELECT * FROM orcsdatabase.staff WHERE id=?";
        try
        {
            PreparedStatement Stmt = con.prepareStatement(GetDataQuery);
            Stmt.setInt(1,id);
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                // creating new object to hold the record
                Staff ObjStaff = new Staff();

                // parsing Staff name to get first name and last name
                ObjStaff.setFirstName(resultSet.getString(1)
                        .substring(0,resultSet.getString(1)
                                .indexOf(' ')));
                ObjStaff.setLastName(resultSet.getString(1)
                        .substring(resultSet.getString(1)
                                .indexOf(' ')+1));

                ObjStaff.setContact(resultSet.getString(2));
                ObjStaff.setEmail(resultSet.getString(3));
                ObjStaff.setAddress(resultSet.getString(4));

                //parsing location to get city and country name
                ObjStaff.setCity(resultSet.getString(5)
                        .substring(0,resultSet.getString(5)
                                .indexOf(',')));
                ObjStaff.setCountry(resultSet.getString(5)
                        .substring(resultSet.getString(5)
                                .indexOf(','+1)));

                // adding Staff objects to array list
                StaffList.add(ObjStaff);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return StaffList;
    }
}
