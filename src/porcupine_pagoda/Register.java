package porcupine_pagoda;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.Connection; 
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import porcupine_pagoda.DBConnect; 

import java.util.regex.Matcher;
import java.util.regex.Pattern;



/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Pattern emailNamePtrn = Pattern.compile(
		    "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.sendRedirect("registration.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email != null && !email.trim().equals("") && isValidEmail(email)) {
			if(!emailInDb(email)) {
				if(password != null && !password.trim().equals("")) {
					
					HttpSession session = request.getSession();			
					
					// If new user registers, delete previous user session.
					if(session.getAttribute("emailForCart") != null && !session.getAttribute("emailForCart").equals(email)) {
						session.invalidate();
						session = request.getSession(true);	
					}
					
					session.setAttribute("first_name", first_name);
					session.setAttribute("last_name", last_name);
					session.setAttribute("phone", phone);
					session.setAttribute("email", email);
					
					try {
						Connection conn = DBConnect.initDB();
						PreparedStatement ins = conn.prepareStatement("insert into Customer values(?, ?, ?, ?, ?, ?)");
						ins.setInt(1, 0);
						ins.setString(2, password);
						ins.setString(3, first_name);
						ins.setString(4, last_name);
						ins.setString(5, phone);
						ins.setString(6, email);
						
						ins.executeUpdate();
						
						ins.close();
						conn.close();
						request.getRequestDispatcher("successRegistration.jsp").forward(request, response);
				
					} catch (Exception e) {
						System.err.println("Database Connection Failed");
						e.printStackTrace();
					}
				}
				else {
					request.setAttribute("emptyPass", true);
					request.getRequestDispatcher("registration.jsp").forward(request, response);
				}
			} 
			else {
				request.setAttribute("emailInDb", true);
				request.getRequestDispatcher("registration.jsp").forward(request, response);
			}
		}
		else {
			request.setAttribute("emptyEmail", true);
			request.getRequestDispatcher("registration.jsp").forward(request, response);
		}
	}
	
	static boolean isValidEmail(String email) {
        
        Matcher check = emailNamePtrn.matcher(email);
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
