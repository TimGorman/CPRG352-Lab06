
package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import services.AccountService;


public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    HttpSession session = request.getSession();
        
    User user = (User) session.getAttribute("user");
        
        if(user == null){   
        getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
        
        }else{
            response.sendRedirect("home");
            return;
    }
 }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        String username = request.getParameter("user");
        String password = request.getParameter("passw");
        
        HttpSession session = request.getSession();
        
       AccountService authenticatedUsers = new AccountService();
       User user = authenticatedUsers.login(username, password);
        
        if (user == null){
          request.setAttribute("invalid", "Invalid Login"); 
          getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
            return;
          
        }else{
          session.setAttribute("user", user);
          response.sendRedirect("home");
            return;
            
            }
        
    }

 
}


