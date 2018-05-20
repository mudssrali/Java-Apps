package ORCS.DAO;

import ORCS.Entity.Gift;
import ORCS.GenericDao.GenericDao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


public class GiftDao extends GenericDao
{

    // gift objects list
    ArrayList<Gift> GiftList = new ArrayList<Gift>();

    // constructor
    public GiftDao() {
    }

    // insert record method to insert record in the Gift table
    public Boolean InsertRecord(Gift gift)
    {

        Boolean InsertSuccessGift = false;
        String InsertQuery = "INSERT INTO orcsdatabase.gift (type, price, name,status) VALUES (?,?,?,?)";

        try
        {
            // creating new prepared statement
            PreparedStatement Stmt = con.prepareStatement(InsertQuery);

            // inserting into gift table
            Stmt.setString(1,gift.getType());
            Stmt.setInt(2,gift.getPrice());
            Stmt.setString(3,gift.getName());
            Stmt.setBoolean(4,gift.getStatus());

            // executing the query
            if(Stmt.execute())
            {
                InsertSuccessGift = true;
            }
            else
            {
                InsertSuccessGift = false;
            }


        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning insertion success flag
        return (InsertSuccessGift);
    }

    // deleting a gift record by id

    public Boolean DeleteRecord(int id)
    {

        // flag for query result
        Boolean DeleteSuccessGift = false;

        // deletion query
        String DeleteQuery = "DELETE FROM orcsdatabase.gift WHERE id=?";

        try
        {
            // creating new PreparedStatement for deleting record from gift
            PreparedStatement Stmt = con.prepareStatement(DeleteQuery);
            Stmt.setInt(1,id);

            //executing deletion query
            if(Stmt.executeUpdate()==1)
            {
                DeleteSuccessGift = true;
            }
            else
            {
                DeleteSuccessGift = false;
            }

        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        // returning deletion success flag
        return(DeleteSuccessGift);
    }
    public ArrayList<Gift> GetGiftList()
    {
        // query
        String GetDataQuery = "SELECT * FROM orcsdatabase.gift";

        try
        {
            // creating new statement
            Statement Stmt = con.createStatement();
            ResultSet resultSet = Stmt.executeQuery(GetDataQuery);

            while(resultSet.next())
            {
                Gift  gift = new Gift();
                gift.setType(resultSet.getString(1));
                gift.setPrice(resultSet.getInt(2));
                gift.setName(resultSet.getString(3));
                gift.setStatus(resultSet.getBoolean(4));
                GiftList.add(gift);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // returning object list of Gift
        return GiftList;
    }
}

