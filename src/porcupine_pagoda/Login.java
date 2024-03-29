package porcupine_pagoda;

import java.io.PrintWriter;
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


/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.sendRedirect("login.jsp");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String email = request.getParameter("login_email");
		String password = request.getParameter("login_password");
		PrintWriter out = response.getWriter();

		if(email != null && !email.trim().equals("")) {
			
			try {
				Connection conn = DBConnect.initDB();
				PreparedStatement creds = conn.prepareStatement("select * from Customer where email=? and password=?");
				creds.setString(1, email);
				creds.setString(2, password);
				
				ResultSet rs = creds.executeQuery();
				if(rs.next()) {
					HttpSession session = request.getSession();
				
					// If new user logs in, delete previous user session.
					if(session.getAttribute("emailForCart") != null && !session.getAttribute("emailForCart").equals(email)) {
						session.invalidate();
						session = request.getSession(true);	
					}
					
					session.setAttribute("email", email);
					creds.close();
					conn.close();
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				else {
					request.setAttribute("failedLoginEmail", email);
					request.getRequestDispatcher("login.jsp").forward(request, response);		
				}
			} catch (Exception e) {
				System.err.println("Database Connection Failed");
				e.printStackTrace();
				request.getRequestDispatcher("login.jsp").forward(request, response);		
			}
		}
		else {
			request.setAttribute("emptyEmail", true);
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}
}
