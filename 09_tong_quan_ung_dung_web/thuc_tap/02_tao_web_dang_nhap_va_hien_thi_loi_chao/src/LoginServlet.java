import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@WebServlet(name = "LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        if (username.equals("admin") && password.equals("admin")){
            writer.println("<h1>Welcom " + username + " to webside" + "</h1>");
        } else {
            writer.println("<h1>Login error</h1>");
        }
        writer.println("</html>");
//        String defaultUser = getServletConfig().getInitParameter("username");
//        String defaultPass = getServletConfig().getInitParameter("password");
//        if (username.equals(defaultUser) && password.equals(defaultPass)){
//            request.getAttribute("loginTime", new Date());
//        } else {
//            response.sendRedirect("login".jsp);
//        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
