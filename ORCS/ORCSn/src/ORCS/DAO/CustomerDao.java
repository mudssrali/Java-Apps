package ORCS.DAO;
import ORCS.Entity.Customer;
import ORCS.GenericDao.GenericDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class CustomerDao extends GenericDao {

    // customer class objects list
    ArrayList<Customer> CustomerList = new ArrayList<Customer>();

    // constructor
    public CustomerDao() { }

    // This method is responsible for inserting record
    // in customer table and SysLogin table simultaneous

    public Boolean InsertRecord(Customer customer) {
        Boolean InsertSuccessCustomer = false;
        String InsertQuery = "INSERT INTO orcsdatabase.customer(name, contact, email,address, location) VALUES (?,?,?,?,?)";
        try {
            PreparedStatement Stmt = con.prepareStatement(InsertQuery);
            // inserting into customer table

            Stmt.setString(1, customer.getFirstname() + " " + customer.getLastname());
            Stmt.setString(2, customer.getContact());
            Stmt.setString(3, customer.getEmail());
            Stmt.setString(4, customer.getAddress());
            Stmt.setString(5, customer.getCity() + ", " + customer.getCountry());

            if (Stmt.execute()) {
                InsertSuccessCustomer = true;
            } else {
                InsertSuccessCustomer = false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return InsertSuccessCustomer;

    }

    // This method is responsible for deleting record
    // in customer table and SysLogin table simultaneous
    // on the bases of given user_id or customer id

    public Boolean DeleteCRecord(int id)
    {
        Boolean DeleteSuccessCustomer = false;

        String DeleteQuery = "DELETE FROM orcsdatabase.customer WHERE id=?";
        try
        {
            // deleting record from customer
            PreparedStatement Stmt = con.prepareStatement(DeleteQuery);
            Stmt.setInt(1,id);
            if(Stmt.executeUpdate()==1)
            {
                DeleteSuccessCustomer = true;
            }
            else
            {
                DeleteSuccessCustomer = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning combine deletion success flag
        return(DeleteSuccessCustomer);
    }

    public ArrayList<Customer> getCustomerList()
    {

        String GetDataQuery = "SELECT * FROM orcsdatabase.customer";
        try
        {
            Statement Stmt = con.createStatement();
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
              // creating new object to hold the record
              Customer ObjCust = new Customer();

              // parsing customer name to get first name and last name
              ObjCust.setFirstname(resultSet.getString(1)
                      .substring(0,resultSet.getString(1)
                                .indexOf(' ')));
              ObjCust.setLastname(resultSet.getString(1)
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

              // adding customer objects to array list
              CustomerList.add(ObjCust);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return CustomerList;
    }

    // overloading getCustomersList method to get a customer data by id
    public ArrayList<Customer> getCustomerList(int id)
    {
        String GetDataQuery = "SELECT * FROM orcsdatabase. WHERE cust_id=?";
        try
        {
            PreparedStatement Stmt = con.prepareStatement(GetDataQuery);
            Stmt.setInt(1,id);
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                // creating new object to hold the record
                Customer ObjCust = new Customer();

                // parsing customer name to get first name and last name
               // ObjCust.setID(resultSet.getInt(1));
                ObjCust.setFirstname(resultSet.getString(2)
                        .substring(0,resultSet.getString(2)
                                .indexOf(' ')));
                ObjCust.setLastname(resultSet.getString(2)
                        .substring(resultSet.getString(2)
                                .indexOf(' ')+1));

                ObjCust.setContact(resultSet.getString(3));
                ObjCust.setEmail(resultSet.getString(4));
                ObjCust.setAddress(resultSet.getString(5));

                //parsing location to get city and country name
                ObjCust.setCity(resultSet.getString(6)
                        .substring(0,resultSet.getString(6)
                                .indexOf(',')));
                ObjCust.setCountry(resultSet.getString(6)
                        .substring(resultSet.getString(6)
                                .indexOf(','+1)));

                // adding customer objects to array list
                CustomerList.add(ObjCust);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return CustomerList;
    }
}
