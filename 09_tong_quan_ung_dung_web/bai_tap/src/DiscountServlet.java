import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/display-discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String moTa = request.getParameter("description");
        float giaNiemYet = Float.parseFloat(request.getParameter("list-price"));
        float chietKhau = Float.parseFloat(request.getParameter("discount-person"));
        float luongChietKhau = giaNiemYet * chietKhau * 0.01f;
        float giaSauChietKhau = giaNiemYet * (1 - (chietKhau/100));
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("Mo ta: " + moTa + "<br>");
        writer.println("Gia niem yet: " + giaNiemYet + "<br>");
        writer.println("Chiet Khau: " + chietKhau + "%<br>");
        writer.println("Luong chiet khau: " + luongChietKhau + "<br>");
        writer.println("Gia sau khi da duoc chiet khau: " + giaSauChietKhau);
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
