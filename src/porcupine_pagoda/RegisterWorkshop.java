package porcupine_pagoda;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import porcupine_pagoda.DBConnect; 

/**
 * Servlet implementation class RegisterWorkshop
 */
@WebServlet("/RegisterWorkshop")
public class RegisterWorkshop extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Pattern emailPattern = Pattern.compile(
		    "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"); 
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterWorkshop() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.sendRedirect("registerWorkshop.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String workshopId = request.getParameter("workshopId");
		
		if(email != null && !email.trim().equals("") && isValidEmail(email)) {
			if(!emailInDb(email)) {

				if(first_name != null && !first_name.trim().equals("")) {
					if( last_name != null && !last_name.trim().equals("")) {
						try {
							Connection conn = DBConnect.initDB();
							PreparedStatement ins = conn.prepareStatement("insert into Workshop_Registration values(default, ?, ?, ?, ?)");
							ins.setString(1, workshopId);
							ins.setString(2, first_name);
							ins.setString(3, last_name);
							ins.setString(4, email);
							
							ins.executeUpdate();
							
							ins.close();
							conn.close();
							request.getRequestDispatcher("successRegistrationWorkshop.jsp").forward(request, response);
			
					
						} catch (Exception e) {
							System.err.println("Database Connection Failed");
							e.printStackTrace();
						}
					}
					else {
						request.setAttribute("emptyLastName", true);
						request.getRequestDispatcher("registerWorkshop.jsp").forward(request, response);
					}
				}
				else {
					request.setAttribute("emptyFirstName", true);
					request.getRequestDispatcher("registerWorkshop.jsp").forward(request, response);
				}
			}
			else {
				request.setAttribute("emailInDb", true);
				request.getRequestDispatcher("registerWorkshop.jsp").forward(request, response);
			}
		}
		else {
			request.setAttribute("emptyEmail", true);
			request.getRequestDispatcher("registerWorkshop.jsp").forward(request, response);
		}
	}
	
	static boolean isValidEmail(String email) {
        
        Matcher check = emailPattern.matcher(email);
        if(check.matches()){
            return true;
        }
        return false;
    }
	
	static boolean emailInDb(String email) {
		boolean emailInDb = true;
		try {
			Connection conn = DBConnect.initDB();
			PreparedStatement check = conn.prepareStatement("select * from Customer where email=?");
			check.setString(1, email);
			
			ResultSet rs = check.executeQuery();
			if(!rs.next()) {
				emailInDb = false;
			}
			check.close();
			conn.close();
	
		} catch (Exception e) {
			System.err.println("Database Connection Failed");
			e.printStackTrace();
		}  
		return emailInDb;
	}

}
