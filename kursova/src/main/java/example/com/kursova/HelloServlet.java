package example.com.kursova;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);


        List<Petition> petitions = (List<Petition>) session.getAttribute("Petitions");
        if (petitions == null) {
            petitions = new ArrayList<>();
        }


        String category = req.getParameter("category");
        String title = req.getParameter("title");
        String text = req.getParameter("text");


        Petition petition = new Petition(category, title, text);


        petitions.add(petition);


        session.setAttribute("Petitions", petitions);


        req.setAttribute("redirectUrl", "PersonalPage.jsp");
        req.getRequestDispatcher("redirect.jsp").forward(req, resp);
    }
}
