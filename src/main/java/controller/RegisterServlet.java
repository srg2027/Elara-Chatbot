package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")  
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the form data
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        // Check if passwords match
        if (password.equals(confirmPassword)) {
            // Here, you'd normally save the user data to a database
            // For now, you can just redirect to a success page or forward back to the registration page
            // For simplicity, we'll just forward to a success page (Success.jsp)
            request.setAttribute("message", "Registration successful!");
            request.getRequestDispatcher("/WEB-INF/Success.jsp").forward(request, response);
        } else {
            // If passwords don't match, show an error message
            request.setAttribute("errorMessage", "Passwords do not match!");
            request.getRequestDispatcher("/WEB-INF/Registration.jsp").forward(request, response);
        }
    }
}
