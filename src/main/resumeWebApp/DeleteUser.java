package src.main.resumeWebApp;

import com.company.dao.impl.UserDaoImpl;
import com.company.dao.inter.UserDaoInter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/deleteUser")
public class DeleteUser extends HttpServlet {

    UserDaoInter dao = new UserDaoImpl();


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        PrintWriter writer = response.getWriter();

        Integer id = Integer.parseInt(request.getParameter("id"));

        boolean b = dao.removeUser(id);
        writer.write("<html> <body>");

            writer.write("<h1 style=\"position : center\"> Deleted succeesfully</h1>");



        writer.write("</body> </html>");



    }

}
