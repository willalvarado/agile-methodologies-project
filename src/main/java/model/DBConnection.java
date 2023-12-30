package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBConnection {
    final private String URL = "jdbc:sqlserver://taskmakerserver.database.windows.net:1433;database=BDD_TaskMaker;user=ricardo25sr@taskmakerserver;password=admin123*;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=3;";
    private Connection connection;
    public DBConnection(){

    }

    private void loadController(){
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            System.out.println("Error al cargar el controlador");
            e.fillInStackTrace();
        }
    }

    public List<Task> getTasks() {

        loadController();
        try (Connection connection = DriverManager.getConnection(URL);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT*FROM TASKS")) {
            List<Task> tasks = new ArrayList<>();
            // Print results from select statement
            while (resultSet.next()) {
                tasks.add(new Task(resultSet.getInt(1),resultSet.getString(2),resultSet.getString(3),resultSet.getDate(4),resultSet.getTime(5),resultSet.getString(6)));
            }
            return tasks;

        } catch (SQLException e) {
            e.fillInStackTrace();
            System.out.println("Error al obtener la lista de tareas");
        }

        List<Task> tasks = new ArrayList<>();
        tasks.add((new Task(1,"tarea 11","descipción 11", new Date(1,1,1), Time.valueOf("10:00:00"), "activa")));
        return tasks;
    }

    public void insertTask(String name, String description, Date date, Time hour, String status) {
        loadController();
        try (Connection connection = DriverManager.getConnection(URL))
 {

            // Construct the SQL INSERT statement with placeholders
            String insertQuery = "INSERT INTO TASKS (name, description, date, hour, status) VALUES (?, ?, ?, ?, ?)";

            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                // Set the values for the placeholders
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, description);
                preparedStatement.setDate(3, date);
                preparedStatement.setTime(4, hour);
                preparedStatement.setString(5, status);

                // Execute the INSERT statement
                int rowsAffected = preparedStatement.executeUpdate();

                if (rowsAffected > 0) {
                    System.out.println("Task inserted successfully");
                } else {
                    System.out.println("Error: Task not inserted");
                }
            }
        } catch (SQLException e) {
            e.fillInStackTrace();
            System.out.println("Error al establecer la connexión para ingresar la tarea");
        }
    }




    public void deleteTask(int id_task) {
        loadController();
        try (Connection connection = DriverManager.getConnection(URL))
        {

            // Construct the SQL INSERT statement with placeholders
            String insertQuery = "DELETE FROM TASKS WHERE id_num = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                // Set the values for the placeholders
                preparedStatement.setInt(1, id_task);
                // Execute the INSERT statement
                int rowsAffected = preparedStatement.executeUpdate();
                if (rowsAffected > 0) {
                    System.out.println("Task deleted successfully");
                } else {
                    System.out.println("Error: Task not deleted");
                }
            }
        } catch (SQLException e) {
            e.fillInStackTrace();
            System.out.println("Error al establecer la connexión para ingresar la tarea");
        }
    }


}
