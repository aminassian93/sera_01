package sera_01.security.controller;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Connection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/*
 * 	This is where you will pull firstName and lastName from database and send that info to next screen,
 * 	saying "Welcome! [firstName] [lastName], Big Brother is watching..."
 */

@WebServlet("/ValidEntryController")
public class ValidEntryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ValidEntryController() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// If user is NOT logged in, redirect them
		
		if(request.getSession().getAttribute("userID") == null) {
			response.sendRedirect("CheckEntryController");
			return;
		}
		
		Integer userID = (Integer) request.getSession().getAttribute("userID");
		
		
		
		
		Connection c = null;
		try {
			String url = "jdbc:mysql://localhost/security_01";
            String username = "root";
            String password = "Halo3rules!";
            
            
            c = DriverManager.getConnection( url, username, password );
            Statement stmt = c.createStatement();
            ResultSet rs = stmt.executeQuery( "select firstName, lastName from users where id = " + userID);
            
            // If rs returns result for valid ID (meaning the valid user successfully logged in),
            // then we use a query to insert a new value for our "log_entries" in our database
            if(rs.next()) {
            		String firstName = rs.getString("firstName");
            		String lastName = rs.getString("lastName");
            		request.setAttribute("firstName", firstName);
        			request.setAttribute("lastName", lastName);
        			
        			Timestamp time_in = new Timestamp(System.currentTimeMillis());
        			request.setAttribute("time_in", time_in);
        			request.setAttribute("userID", userID);
        			
        			
            }
            
			c.close();
		} catch(SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if( c != null ) {
        				c.close();
				}
			} catch(SQLException e) {
		        throw new ServletException( e );
		    }
		
		}
		
		request.getRequestDispatcher("/WEB-INF/WelcomeScreen.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Timestamp = request.getParameter("time_in");
		
		// hopefully works
		SimpleDateFormat dateFormat = new SimpleDateFormat(
	            "yyyy-MM-dd hh:mm:ss");

	    Date parsedTimeStamp;
	    Timestamp time_in = null;
		try {
			parsedTimeStamp = dateFormat.parse(request.getParameter("time_in"));
			time_in = new Timestamp(parsedTimeStamp.getTime());
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

//	    Timestamp time_in = new Timestamp(parsedTimeStamp.getTime());
		
	    // End
	    
		Integer userID = Integer.parseInt(request.getParameter("userID"));
        
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		
		String fullname = firstName + " " + lastName;
		
		
		Connection c = null;
	    try {
			String url = "jdbc:mysql://localhost/security_01";
            String username = "root";
            String password = "Halo3rules!";
            
            
    			String sql = "insert into log_entries (userID, fullName, time_in)"
    				+ "values (?,?,?)";	
	            
	    	    c = DriverManager.getConnection( url, username, password );
	    	    PreparedStatement pstmt = c.prepareStatement(sql);
	    	    
    	    
	    	    pstmt.setInt(1, userID);
	    	    pstmt.setString(2, fullname);
	    	    pstmt.setTimestamp(3, time_in);
	    	    
	    	    pstmt.executeUpdate();
    	    
            
			c.close();
		} catch(SQLException e) {
			throw new ServletException(e);
		} finally {
			try {
				if( c != null ) {
        				c.close();
				}
			} catch(SQLException e) {
		        throw new ServletException( e );
		    }
		
		}
	}

}



//
// IDEA, in doGet, create a JAVA timestamp and pass it to your JSP (as a String) and from your
// JSP pass it to doPOST.
//
// Convert string to timestamp, and THEN create a fresh new log_entry.
// Should look like this:

// insert into log_entries (userID, fullName, time_in) values (3333, "Yonathan Gomez", [timestamp]).

// it's gonna be difficult to find specific log_entry to update so instead we create one with a saved
// "time_in" timestamp that's ready to go!






