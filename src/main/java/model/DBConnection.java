package model;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DBConnection {
    final private String URL = "jdbc:sqlserver://taskmakerserver.database.windows.net:1433;database=BDD_TaskMaker;user=ricardo25sr@taskmakerserver;password=admin123*;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=3;";
    private Connection connection;
    public DBConnection(){

    }

    public void loadController(){
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

/*
                tasks.forEach(s->System.out.println(s.id + " "
                        + s.name + " "
                        + s.description
                        + s.date + " "
                        + s.time + " "
                        + s.status
                ));

                System.out.println(resultSet.getString(1) + " "
                        + resultSet.getString(2) + " "
                        + resultSet.getString(3)  + " "
                        + resultSet.getString(4)  + " "
                        + resultSet.getString(5));*/
            }
            return tasks;

        } catch (SQLException e) {
            e.fillInStackTrace();
            System.out.println();
        }
        return null;
    }
}
