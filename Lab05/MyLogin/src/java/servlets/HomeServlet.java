package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;


public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        
        if(request.getParameter("logout") == null){
            User user = (User) session.getAttribute("user");
            if(user == null){
                response.sendRedirect("login");
                return;
            }else{
                getServletContext().getRequestDispatcher("/WEB-INF/home.jsp").forward(request, response);
            }
            }else{
                    session.invalidate();
                    request.setAttribute("logout", "You have successfully logged out.");
                    getServletContext().getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
                        return;
                    }
            
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }




}
