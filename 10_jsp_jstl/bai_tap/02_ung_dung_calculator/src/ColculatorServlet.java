import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

@WebServlet(name = "ColculatorServlet", urlPatterns = "/index")
public class ColculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        float somot = Integer.parseInt(request.getParameter("so-mot"));
        float sohai = Integer.parseInt(request.getParameter("so-hai"));
        char toantu = request.getParameter("toantu").charAt(0);
        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        writer.println("<h1>Ket qua: </h1>");
        try {
            float ketQua = Calculator.calculate(somot,sohai,toantu);
            writer.println(somot + " " + toantu + " " + sohai + " = " + ketQua);
        } catch (RuntimeException e){
            writer.println("Co loi: " + e.getMessage());
        }
        writer.println("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}