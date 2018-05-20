<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="ORCS.DAO.LoginDao" %>
<%@page import="ORCS.Entity.Login"  %>
 <%
     String Username = request.getParameter("username");
     String Password = request.getParameter("password");
     Login login = (new LoginDao()).getLoginList(Username);
     if(login.getUsername()!=null) {
         if (login.getUsername().equalsIgnoreCase(Username) && login.getPassword().equals(Password) && login.getType().equalsIgnoreCase("admin"))
         {
             request.setAttribute("username", login);
             request.getRequestDispatcher("/controller?action=admin").forward(request,response);
         }
         else
         {
             session.setAttribute("Error","Invalid username or password");
             response.sendRedirect("/controller?action=login");
         }
     }
     else
     {

         session.setAttribute("Error","Invalid username or password");
         response.sendRedirect("/controller?action=login");
     }
 %>
