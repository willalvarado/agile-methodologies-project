import model.DBConnection;
import model.Task;

import java.util.List;

public class Main {

    // Connect to your database.
    // Replace server name, username, and password with your credentials
    public static void main(String[] args) {

        DBConnection connection = new DBConnection();
        //connection.insertTask("tarea 11","descipción 11", new Date(1,1,1), Time.valueOf("10:00:00"), "activa");
        connection.deleteTask(11);
        List<Task> tareas = connection.getTasks();
        System.out.println(tareas.size());
        System.out.println(tareas.get(1).getId());


    }
}
