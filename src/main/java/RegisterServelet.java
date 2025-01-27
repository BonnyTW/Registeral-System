import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/register")
public class RegisterServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (registerUser(username, password)) {
            request.setAttribute("username", username); // Pass username to the welcome page
            request.getRequestDispatcher("Welcome.jsp").forward(request, response); // Redirect to the welcome page
        } else {
            request.setAttribute("errorMessage", "Registration Failed. Username might already exist."); // Set error message
            response.sendRedirect("Error.jsp"); // Redirect to Error.jsp
        }
    }





    private boolean registerUser(String username, String password) {
        String jdbcURL = "jdbc:mysql://localhost:3306/Login";
        String dbUser = "root"; 
        String dbPassword = "#Bonnypass432"; 

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sql = "INSERT INTO userinfo(Username, password) VALUES (?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);

            int rowsInserted = statement.executeUpdate();
            return rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

}
