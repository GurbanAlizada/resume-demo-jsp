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

@WebServlet("/updateUser")
public class UpdateUser extends HttpServlet {

    UserDaoInter dao = new UserDaoImpl();


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        PrintWriter writer = response.getWriter();


        Integer id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email  = request.getParameter("email");
        String phone = request.getParameter("phone");



        User u = new User( id ,name , surname , email ,phone ,null ,null , null);

        dao.updateUser(u);
        writer.write("<html> <body>");
        writer.write(u.getName()  + " updated succeesfully");

        writer.write("</body> </html>");

    }



}
