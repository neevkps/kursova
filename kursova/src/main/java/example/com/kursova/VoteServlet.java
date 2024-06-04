package example.com.kursova;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "VoteServlet", value = "/vote-servlet")
public class VoteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int petitionId = Integer.parseInt(request.getParameter("petitionId"));


        HttpSession session = request.getSession();
        List<Petition> petitions = (List<Petition>) session.getAttribute("Petitions");

        if (petitions != null && petitionId >= 0 && petitionId < petitions.size()) {

            Petition petition = petitions.get(petitionId);
            petition.vote();


            session.setAttribute("Petitions", petitions);
        }

        response.sendRedirect("PetitionDetails.jsp?id=" + petitionId);
    }
}
