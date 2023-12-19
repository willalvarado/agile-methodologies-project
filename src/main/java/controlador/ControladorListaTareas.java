package controlador;

import java.io.*;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import jakarta.jms.Session;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.DBConnection;
import model.Task;


@WebServlet(name = "controladorListaTareas", value = "/lista-tareas")
public class ControladorListaTareas extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        DBConnection connection = (DBConnection) session.getAttribute("connection");
        List<Task> tasks = connection.getTasks();
        session.setAttribute("tasks", tasks);
        response.sendRedirect("vista/vistaListaTareas.jsp");
    }

    public void destroy() {
    }



}