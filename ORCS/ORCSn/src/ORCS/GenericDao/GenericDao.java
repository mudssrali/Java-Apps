package ORCS.GenericDao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GenericDao
{
    public static Connection con = null;

    public GenericDao() {
        if(con==null)
        {
            //Configuring and Starting the database
            ConfigureConnection();
        }

    }
    private void ConfigureConnection()
    {
        try {

            Class.forName("org.postgresql.Driver");
            //database information
            String dbType = "jdbc:postgresql:";
            String dbUrl = "//localhost:";
            String dbPort = "5432/";
            String dbName = "postgres";
            String dbUser = "postgres";
            String dbPass = "1234";
            // Establishing connection
            con = DriverManager.getConnection(dbType+dbUrl+dbPort+dbName,dbUser,dbPass);

        }catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            System.err.println(e.getClass().getName() + ": " + e.getMessage());
            System.exit(0);
        }
    }
}
