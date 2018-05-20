package ORCS.DAO;

import ORCS.Entity.Coupon;
import ORCS.GenericDao.GenericDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class CouponDao extends GenericDao
{
    // Coupon objects list
    ArrayList<Coupon> CouponList = new ArrayList<Coupon>();

    // constructor
    public CouponDao() {
    }

    // insert record method to insert record in the Coupon table
    public Boolean InsertRecord(Coupon Coupon)
    {

        Boolean InsertSuccessCoupon = false;
        String InsertQuery = "INSERT INTO orcsdatabase.coupon (status, issuedate, expirydate,email) VALUES (?,?,?,?)";

        try
        {
            // creating new prepared statement
            PreparedStatement Stmt = con.prepareStatement(InsertQuery);

            // inserting into Coupon table
            Stmt.setBoolean(1,Coupon.getStatus());
            Stmt.setString(2,Coupon.getIssueDate().toString());
            Stmt.setString(3,Coupon.getExpiryDate().toString());
            Stmt.setString(4,Coupon.getEmail());

            // executing the query
            if(Stmt.execute())
            {
                InsertSuccessCoupon = true;
            }
            else
            {
                InsertSuccessCoupon = false;
            }


        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning insertion success flag
        return (InsertSuccessCoupon);
    }

    // deleting a Coupon record by id

    public Boolean DeleteRecord(int id)
    {

        // flag for query result
        Boolean DeleteSuccessCoupon = false;

        // deletion query
        String DeleteQuery = "DELETE FROM orcsdatabase.coupon WHERE id=?";

        try
        {
            // creating new PreparedStatement for deleting record from Coupon
            PreparedStatement Stmt = con.prepareStatement(DeleteQuery);
            Stmt.setInt(1,id);

            //executing deletion query
            if(Stmt.executeUpdate()==1)
            {
                DeleteSuccessCoupon = true;
            }
            else
            {
                DeleteSuccessCoupon = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning deletion success flag
        return(DeleteSuccessCoupon);
    }
    public ArrayList<Coupon> GetCouponList()
    {
        // query
        String GetDataQuery = "SELECT * FROM orcsdatabase.coupon";

        try
        {
            // creating new statement
            Statement Stmt = con.createStatement();
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                Coupon  Coupon = new Coupon();
                try {
                    Coupon.setID(resultSet.getInt(1));
                    Coupon.setStatus(resultSet.getBoolean(2));
                    Date issueDate = new SimpleDateFormat("dd/MM/yyyy").parse(resultSet.getString(3));
                    Coupon.setIssueDate(issueDate);
                    Date expirayDate = new SimpleDateFormat("dd/MM/yyyy").parse(resultSet.getString(4));
                    Coupon.setExpiryDate(expirayDate);
                    Coupon.setEmail(resultSet.getString(5));
                } catch (ParseException e) {
                    e.printStackTrace();
                }
                CouponList.add(Coupon);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // returning object list of Coupon
        return CouponList;
    }
}
