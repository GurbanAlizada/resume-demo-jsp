package src.main.resumeWebApp;

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

@WebServlet("/addUser")
public class AddUser extends HttpServlet {

    private UserDaoInter dao = new UserDaoImpl();


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter writer = response.getWriter();
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email  = request.getParameter("email");
        String phone = request.getParameter("phone");

        User u = new User(name , surname , email ,phone);

        dao.addUser(u);
        writer.write("<html> <body>");
        writer.write(u.getName()  + " inserted successfully");

        writer.write("</body> </html>");

    }





}
