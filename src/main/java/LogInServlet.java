import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "LogInServlet", urlPatterns = {"/LogInServlet"})
public class LogInServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext servletContext = getServletContext();

        String navn = request.getParameter("navn");
        String kodeord = request.getParameter("kodeord");

        if (servletContext.getAttribute("brugerMap") == null) {

            Map<String, String> brugerMap = new HashMap<>();

            brugerMap.put("test","test");
            brugerMap.put("admin","1234");

            servletContext.setAttribute("brugerMap", brugerMap);

        }


        if (!((Map<String, String>) servletContext.getAttribute("brugerMap")).containsKey(navn)) {


            request.setAttribute("besked", "Velkommen til brugerlogin. Opret dig som bruger:");
            request.getRequestDispatcher("WEB-INF/opretbruger.jsp").forward(request,response);

        }

        if ( ((Map<String,String>) servletContext.getAttribute("brugerMap")).get(navn).equalsIgnoreCase(kodeord)){
            //todo gå til huske liste

            if(navn.equalsIgnoreCase("admin")){
                request.getRequestDispatcher("WEB-INF/admin.jsp").forward(request, response);
            }
            request.getRequestDispatcher("WEB-INF/huskeliste.jsp").forward(request, response);
        }

        //gå til login (index)
        request.setAttribute("besked", "din kode var forkert");
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
