package src.main.resumeWebApp;/*
package main.resumeWebApp;

import com.company.dao.impl.UserDaoImpl;
import com.company.dao.inter.UserDaoInter;
import com.company.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/getAllUser")
public class GetAllUser extends HttpServlet {

    private UserDaoInter dao = new UserDaoImpl();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<User> users = dao.getAllUser();
        PrintWriter writer = response.getWriter();
        writer.write("<html> <body>");
        for(User u : users){
            writer.write(u.getName() + " <br>");
        }
        writer.write("</body> </html>");

       // response.sendRedirect("getAllUser.jsp");

    }


}
*/