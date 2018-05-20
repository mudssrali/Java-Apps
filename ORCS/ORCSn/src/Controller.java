import ORCS.DAO.LoginDao;
import ORCS.Entity.Login;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
@WebServlet(name = "WebController", urlPatterns = {"/controller"})
public class Controller extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String param = request.getParameter("action");
        ServletContext context = getServletContext();
        RequestDispatcher requestDispatcher;
        if (param.equalsIgnoreCase("index")) {
            requestDispatcher = context.getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(request, response);
        } else if (param.equalsIgnoreCase("about")) {
            requestDispatcher = context.getRequestDispatcher("/about.jsp");
            requestDispatcher.forward(request, response);
        } else if (param.equalsIgnoreCase("contact")) {
            requestDispatcher = context.getRequestDispatcher("/contact.jsp");
            requestDispatcher.forward(request, response);
        } else if (param.equalsIgnoreCase("signup")) {
            requestDispatcher = context.getRequestDispatcher("/signup.jsp");
            requestDispatcher.forward(request, response);
        } else if (param.equalsIgnoreCase("login")) {
            requestDispatcher = context.getRequestDispatcher("/login.jsp");
            requestDispatcher.forward(request, response);
        } else if (param.equalsIgnoreCase("booking")) {
            requestDispatcher = context.getRequestDispatcher("/index.jsp");
            requestDispatcher.forward(request, response);
        }
        else if(param.equalsIgnoreCase("admin"))
        {
            String username = request.getParameter("username");
            request.getSession().setAttribute("username", username);
            request.getRequestDispatcher("/admin.jsp").forward(request, response);
        }
        else if(param.equalsIgnoreCase("logout"))
        {
            HttpSession session = request.getSession(false);
                if(session!=null) {
                    session.invalidate();
                    request.removeAttribute("username");
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    return;
                }

        }
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String param = request.getParameter("action");
        if(param.equalsIgnoreCase("validate"))
        {
            String Username = request.getParameter("username");
            String Password = request.getParameter("password");
            if(Validate(Username, Password))
            {
                request.getSession().setAttribute("username", Username);
                request.getRequestDispatcher("/admin.jsp").forward(request, response);
            }
            else
            {
                request.getSession().setAttribute("Error","Invalid username or password");
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
    }
    private Boolean Validate(String username, String password)
    {
        Boolean flag;
        Login login = (new LoginDao()).getLoginList(username);
        if(login.getUsername()!=null) {
            if (login.getUsername().equalsIgnoreCase(username) && login.getPassword().equals(password) && login.getType().equalsIgnoreCase("admin"))
            {
                flag = true;
            }
            else
            {
              flag = false;
            }
        }
        else
        {

           flag = false;
        }
        return flag;
    }
}

