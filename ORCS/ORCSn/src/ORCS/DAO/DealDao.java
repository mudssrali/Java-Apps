package ORCS.DAO;

import ORCS.Entity.Deal;
import ORCS.GenericDao.GenericDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class DealDao extends GenericDao
{
    // Deal objects list
    ArrayList<Deal> DealList = new ArrayList<Deal>();

    // constructor
    public DealDao() {
    }

    // insert record method to insert record in the Deal table
    public Boolean InsertRecord(Deal deal)
    {

        Boolean InsertSuccessDeal = false;
        String InsertQuery = "INSERT INTO orcsdatabase.deal (name, quantity) VALUES (?,?)";

        try
        {
            // creating new prepared statement
            PreparedStatement Stmt = con.prepareStatement(InsertQuery);

            // inserting into Deal table
            Stmt.setString(1,deal.getName());
            Stmt.setInt(2,deal.getQuantity());

            // executing the query
            if(Stmt.execute())
            {
                InsertSuccessDeal = true;
            }
            else
            {
                InsertSuccessDeal = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning insertion success flag
        return (InsertSuccessDeal);
    }

    // deleting a Deal record by id

    public Boolean DeleteRecord(int id)
    {

        // flag for query result
        Boolean DeleteSuccessDeal = false;

        // deletion query
        String DeleteQuery = "DELETE FROM orcsdatabase.deal WHERE id=?";

        try
        {
            // creating new PreparedStatement for deleting record from Deal
            PreparedStatement Stmt = con.prepareStatement(DeleteQuery);
            Stmt.setInt(1,id);

            //executing deletion query
            if(Stmt.executeUpdate()==1)
            {
                DeleteSuccessDeal = true;
            }
            else
            {
                DeleteSuccessDeal = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning deletion success flag
        return(DeleteSuccessDeal);
    }
    public ArrayList<Deal> GetDealList()
    {
        // query
        String GetDataQuery = "SELECT * FROM orcsdatabase.deal";

        try
        {
            // creating new statement
            Statement Stmt = con.createStatement();
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                Deal  deal = new Deal();
                deal.setID(resultSet.getInt(1));
                deal.setName(resultSet.getString(2));
                deal.setQuantity(resultSet.getInt(3));
                DealList.add(deal);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // returning object list of Deal
        return DealList;
    }
}
