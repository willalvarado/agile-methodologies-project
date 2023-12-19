import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLDatabaseConnection {

    // Connect to your database.
    // Replace server name, username, and password with your credentials
    public static void main(String[] args) {
        // Cargar el controlador JDBC
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            // Maneja la excepción de carga del controlador
        }

        String connectionUrl =
                "jdbc:sqlserver://taskmakerserver.database.windows.net:1433;database=BDD_TaskMaker;user=ricardo25sr@taskmakerserver;password=admin123*;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=3;";

        try (Connection connection = DriverManager.getConnection(connectionUrl);
             Statement statement = connection.createStatement();
             ResultSet resultSet = statement.executeQuery("SELECT name FROM TASKS")) {

            // Print results from select statement
            while (resultSet.next()) {
                String nombre = resultSet.getString("name");
                System.out.println(nombre);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
