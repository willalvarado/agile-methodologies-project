package controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.DBConnection;

import java.io.IOException;

@WebServlet(name = "loginController", value="/login-controller")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //TODO Reemplazar por doPost e implementar el login
        HttpSession session = req.getSession();
        DBConnection connection = new DBConnection();
        session.setAttribute("connection",connection);
        resp.sendRedirect("/lista-tareas");
    }
}
