package sera_01.security;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * 	This is where you will update database and shutdown all appliances.
 * 	You will also instantiate EmailConfig and email all users.
 */

@WebServlet("/InvalidEntryController")
public class InvalidEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public InvalidEntryController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		EmailConfig breakInEmail = new EmailConfig();

		// s.e.r.a.secure1
		String from = "s.e.r.a.secure1";
        String pass = "easyenter123";
        String[] to = { "guyrandom437@gmail.com" }; // list of recipient email addresses
        String subject = "Burglary";
        String body = "Someone has tried to break into your house. We have contacted the police and they're on"
        		+ " their way.";
        
        // , "yonchrisanto@gmail.com", "Aminass2@calstatela.edu", "Ivanscreativity@gmail.com"

        
		EmailConfig.sendFromGMail(from, pass, to, subject, body);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
