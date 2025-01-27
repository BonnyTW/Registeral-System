import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/login")

public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (authenticate(username, password)) {
            request.setAttribute("username", username); // Pass username to the welcome page
            request.getRequestDispatcher("Welcome.jsp").forward(request, response); // Redirect to the welcome page
        } else {
            request.setAttribute("errorMessage", "Login Failed. Incorrect username or password."); // Set error message
            response.sendRedirect("Error.jsp"); // Redirect to Error.jsp
        }
    }




    private boolean authenticate(String username, String password) {
        // Database connection details
        String URL = "jdbc:mysql://localhost:3306/Login"; 
        String User = "root"; 
        String Password = "#Bonnypass432"; 

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish a connection to the database
            Connection connection = DriverManager.getConnection(URL, User, Password);
            System.out.println("Database connection successful!");
            

            // Prepare the SQL query to authenticate the user
            String sql = "SELECT * FROM userinfo WHERE Username = ? AND password = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            
            // Set the parameters for the query
            statement.setString(1, username);
            statement.setString(2, password);

            // Execute the query and check if a result exists
            ResultSet resultSet = statement.executeQuery();
            
            // If a matching record is found, return true
            return resultSet.next();

        } catch (Exception e) {
            // Print the exception stack trace for debugging
            e.printStackTrace();
        }

        // Return false if authentication fails or an exception occurs
        return false;
    }

}
