package porcupine_pagoda;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Checkout
 */
@WebServlet("/Checkout")
public class Checkout extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Pattern emailPattern = Pattern.compile(
		    "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$");  
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Checkout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		response.sendRedirect("checkout.jsp");
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
		String address = request.getParameter("address");
		String cc_num = request.getParameter("cc_num");
		String cc_sec_code = request.getParameter("cc_sec_code");
		String zipcode = request.getParameter("zipcode");
		String expdate = request.getParameter("expdate");
		HttpSession session = request.getSession();
		
		boolean reload = false;
		
		if(!isNullOrEmpty(first_name)) {
			session.setAttribute("first_name", first_name);	
		} else {
			request.setAttribute("first_name_empty", true);
			reload = true;
		}
		
		if(!isNullOrEmpty(last_name)) {
			session.setAttribute("last_name", last_name);	
		} else {
			request.setAttribute("last_name_empty", true);
			reload = true;
		}
		
		if(!isNullOrEmpty(phone)) {
			session.setAttribute("phone", phone);	
		} else {
			request.setAttribute("phone_empty", true);
			reload = true;
		}
		
		if(!isNullOrEmpty(email)) {
			if(!isValidEmail(email)) {
				request.setAttribute("email_invalid", true);
				reload = true;
			}else {
			session.setAttribute("email", email);	
			}
		} else {
			request.setAttribute("email_empty", true);
			reload = true;
		}
		
		
		if(!isNullOrEmpty(address)) {
			session.setAttribute("address", address);	
		} else {
			request.setAttribute("address_empty", true);
			reload = true;
		}
		
		if(isNullOrEmpty(zipcode)) {
			request.setAttribute("zipcode_empty", true);
			reload = true;
				
		} else {
			session.setAttribute("zipcode", zipcode);
		}	
		
		if(!isNullOrEmpty(cc_num)) {
			if(!isValidCCnum(cc_num)) {
				request.setAttribute("cc_num_invalid", true);
				reload = true;
			}else {
				session.setAttribute("cc_num", cc_num);	
			}
		} else {
			request.setAttribute("cc_num_empty", true);
			reload = true;
		}
		
		if(!isNullOrEmpty(cc_sec_code)) {
			if(!isValidSecCode(cc_sec_code)) {
				request.setAttribute("cc_sec_code_invalid", true);
				reload = true;
			}else {
				session.setAttribute("cc_sec_code", cc_sec_code);	
			}
		} else {
			request.setAttribute("cc_sec_code_empty", true);
			reload = true;
		}
		
		if(!isNullOrEmpty(expdate)) {
			if(!isValidExpdate(expdate)) {
				request.setAttribute("expdate_invalid", true);
				reload = true;
			}else {
				session.setAttribute("expdate", expdate);	
			}
		} else {
			request.setAttribute("expdate_empty", true);
			reload = true;
		}
		
		
		if (reload) {
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("successCheckout.jsp").forward(request, response);
		}
	
	}
	
	static boolean isValidEmail(String email) {
        
        Matcher check = emailPattern.matcher(email);
        if(check.matches()){
            return true;
        }
        return false;
    }
	
	static boolean isNullOrEmpty(String inp) {
        boolean nullOrEmpty = false;
        if(inp == null || inp.trim().equals("")) {
        	nullOrEmpty = true;
        }
        return nullOrEmpty;
    }
	
	static boolean isValidCCnum(String cc_num) {
		cc_num = cc_num.replaceAll("-", "");
		cc_num = cc_num.replaceAll(" ", "");
        
        String regex = "^(?:(?<visa>4[0-9]{12}(?:[0-9]{3})?)|" +
                "(?<mastercard>5[1-5][0-9]{14})|" +
                "(?<discover>6(?:011|5[0-9]{2})[0-9]{12})|" +
                "(?<amex>3[47][0-9]{13})|" +
                "(?<diners>3(?:0[0-5]|[68][0-9])?[0-9]{11})|" +
                "(?<jcb>(?:2131|1800|35[0-9]{3})[0-9]{11}))$";
        
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(cc_num);
        
        if(matcher.matches()){
            return true;
        }
        return false;
    }
	
	static boolean isValidSecCode(String cc_sec_code)
	{
		String regex = "^[0-9]{3}$";
		Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(cc_sec_code);
        
        if(matcher.matches()){
            return true;
        }
        return false;
	}
	
	static boolean isValidExpdate(String expdate)
	{
		String[] dateStr = expdate.split("-");
		
		expdate = expdate.replaceAll("-", "");
		String regex = "^[0-9]{6}$";
		Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(expdate);
        
        if(matcher.matches() && isYear(dateStr[0]) && isMonth(dateStr[1])){
            return true;
        }
        return false;
	}
	
	static boolean isMonth(String monthStr){
		int month = Integer.parseInt(monthStr);
		if(month >= 1 && month <=12)
			return true;
		else return false;
	}
	
	static boolean isYear(String yearStr){
		int year = Integer.parseInt(yearStr);
		if(year >= 2019 && year <= 2050)
			return true;
		else return false;
	}

}
