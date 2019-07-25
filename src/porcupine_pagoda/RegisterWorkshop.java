package porcupine_pagoda;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

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
		
		if(email != null && !email.trim().equals("")) {
			
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
			request.getRequestDispatcher("registerWorkshop.jsp").forward(request, response);
		}
	}

}
