package ORCS;

import ORCS.DAO.DealDao;
import ORCS.DAO.LoginDao;
import ORCS.Entity.Deal;
import ORCS.Entity.Login;

public class Driver {
    public static void main(String args[])
    {
        Login login = new Login();
        LoginDao loginDao  = new LoginDao();
        String name  = "Mudassar";
        login.setFirstname(name);
        name  = "Ali";
        login.setLastname(name);
        name = "Hack";
        login.setUsername(name);
        name ="123";
        login.setPassword(name);
        name ="Mentor.cs007@gmail.com";
        login.setEmail(name);
        if(loginDao.InsertRecord(login)==false)
        {
            System.out.println("Successfully Inserted");
        }
        else
        {
            System.out.println("Successfully Inserted Not");
        }
    }
}
