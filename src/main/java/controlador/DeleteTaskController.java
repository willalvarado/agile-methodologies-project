package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DBConnection;

import java.io.IOException;

@WebServlet (name = "deleteTaskController", value = "/deleteTask-controller")
public class DeleteTaskController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int taskID = Integer.parseInt(req.getParameter("id"));
        HttpSession session = req.getSession();
        DBConnection connection = (DBConnection) session.getAttribute("connection");
        connection.deleteTask(taskID);
        resp.sendRedirect("/lista-tareas");
    }
}
