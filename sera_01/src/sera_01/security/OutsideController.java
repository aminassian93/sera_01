package sera_01.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OutsideController")
public class OutsideController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public OutsideController() {
        super();
        
    }


	public void init(ServletConfig config) throws ServletException {
		super.init( config ); 
	} 


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/Outside.jsp").forward(request, response);    
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		if(request.getParameter("validID") != null) {
			String validID = request.getParameter("validID");
			request.getSession().setAttribute("userID", validID);
			response.sendRedirect("HomeController");
			return;
		}
		response.sendRedirect("OutsideController");  
		
		
		
		
	}

}
