import model.DBConnection;
import model.Task;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class SQLDatabaseConnection {

    // Connect to your database.
    // Replace server name, username, and password with your credentials
    public static void main(String[] args) {

        DBConnection connection = new DBConnection();
        List<Task> tareas = connection.getTasks();
        System.out.println(tareas.size());
        System.out.println(tareas.get(1).getId());

    }
}
