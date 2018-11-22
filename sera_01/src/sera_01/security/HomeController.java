package sera_01.security;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/HomeController")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void init(ServletConfig config) throws ServletException {
		
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getSession().getAttribute("userID") == null) {
			response.sendRedirect("OutsideController");
			return; 
		}
		
		
		
		// Creates "Hour:Min AM/PM" string
		// However, this code won't be useful if during simulation, the minute changes
		// Then all timestamps for a particular Hour will have the same minute
//		Date date = new Date( );
//	    SimpleDateFormat formatter = new SimpleDateFormat ("hh:mm a");
//	    
//	    String currentTime = formatter.format(date);
	    
		String userID = (String) request.getSession().getAttribute("userID");  
		
		request.setAttribute("userID", userID);
		request.getRequestDispatcher("/WEB-INF/HomeInterface.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
