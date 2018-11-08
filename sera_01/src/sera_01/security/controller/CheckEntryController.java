package sera_01.security.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CheckEntryController")
public class CheckEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CheckEntryController() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void init(ServletConfig config) throws ServletException {
		// ************************************************************
		// Always need to call this in "init" to get connected to your database.
		// ONLY NEED ONE OF THESE PER APPLICATION.
		// We don't need to initialize valid users here, we only pull data from
		// database to check for valid entry. Users should already be created by database.
		// ************************************************************
		
		try
        {
            Class.forName( "com.mysql.jdbc.Driver" );
        }
        catch( ClassNotFoundException e )
        {
            throw new ServletException( e );
        }
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/EntryDisplay.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// This will be the method where we connect to our database.
		// Using our tempUserID, we will query to SELECT firstName, lastName WHERE userID = 'tempUserID'.
		// If the result is "null" then for now we wil display "All appliances have been shutdown..."
		// (if there's time, try to figure out how to send an email to teammates, [found sources])
		
		// If the result is NOT "null", then display message saying "Welcome [firstName] [lastName]! Big Brother is watching..."
		
		
		if(request.getParameter("tempUserID") == null) {
			response.sendRedirect("InvalidEntryController");
			return;
		}
		
		// Check for null is made above (meaning there was a break-in)
		Integer tempUserID = Integer.parseInt(request.getParameter("tempUserID"));
		
		
		Connection c = null;
		try {
			// security_01 is the name of the database we want to use
			String url = "jdbc:mysql://localhost/security_01";
            String username = "root";
            String password = "Halo3rules!";
 

            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "select * from users where id = " + tempUserID);
            
            // Remember rs.next() moves the pointer to the first row of your Result Set,
            // If result set is empty (AKA null), then stuff inside if-statement won't execute
            if(rs.next()) {
            		// Set userID as session item for now. Redirect to 
            		request.getSession().setAttribute("userID", tempUserID);
            		response.sendRedirect("ValidEntryController");
            		// return prevents execution of lines below.
         		return;
            }
            
            c.close();
            
		} catch(SQLException e) {
			throw new ServletException( e );
		} finally {
			try {
                if( c != null ) {
                		c.close();
                }
                		
            } catch( SQLException e ) {
                throw new ServletException( e );
            }
		}
		
		// In this scenario, the (valid or invalid) user is trying to scan their ID.
		// We don't want to shut down all appliances if there's just a malfunction with the hardware.
		// Instead, we simply ask the user to try again. If the user breaks in, then for safety measures
		// we proceed to "InvalidEntryController"
		response.sendRedirect("CheckEntryController");
		return;
	}
	

}
