package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DBConnection;

import java.io.IOException;
import java.sql.Date;
import java.sql.Time;

@WebServlet(name = "AddTaskController", value = "/addtask-controller")
public class AddTaskController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String name = req.getParameter("taskName");
        String description = req.getParameter("taskDescription");
        Date date = Date.valueOf(req.getParameter("taskDate"));
        Time time = Time.valueOf(req.getParameter("taskTime")+":00");
        final String STATUS = "activa";
        HttpSession session = req.getSession();
        DBConnection connection = (DBConnection) session.getAttribute("connection");
        connection.insertTask(name, description, date, time, STATUS);
        resp.sendRedirect("/lista-tareas");
    }
}
