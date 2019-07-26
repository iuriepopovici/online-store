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
import java.util.ArrayList;
import java.util.List;

import porcupine_pagoda.DBConnect; 

import porcupine_pagoda.CartItem;

/**
 * Servlet implementation class ProcessCart
 */
@WebServlet("/ProcessCart")
public class ProcessCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProcessCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String productIdPara = request.getParameter("product");
		String quantityPara = request.getParameter("quantity");
		int productId, quantity;
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(7200);
		
		List<CartItem> cart = (List<CartItem>)session.getAttribute("cart");
		if(cart == null) {
			cart = new ArrayList<CartItem>();
		}
		
		if(productIdPara != null) productId = String.parseInt(productIdPara);
		
		if(quantityPara != null) quantity = String.parseInt(quantityPara);
		else quantity = 0;
		
		if(productId >= 1 && productId <= 6)
		{
			try {
				CartItem item = new CartItem();
				
				Connection conn = DBConnect.initDB();
				PreparedStatement itemSt = conn.prepareStatement("select * from Product where product_id=?");
				itemSt.setInt(1, productId);
				ResultSet rsProd = itemSt.executeQuery();
				
				if(rsProd.next()) {
					
					item.setItemName(rsProd.getString("product_name"));
					item.setItemId(rsProd.getInt("product_id"));
					item.setItemPrice(rsProd.getDouble("price"));
					item.setColor(rsProd.getString("product_color"));
					item.setSku(rsProd.getString("product_sku"));
					item.setWeight(rsProd.getDouble("product_weight"));
					item.setNbitems(String.parseInt(quantity));
					
					
					itemSt.close();
					conn.close();
					request.getRequestDispatcher("index.jsp").forward(request, response);
				}
				cart.add(item);
			} catch (Exception e) {
				System.err.println("Database Connection Failed");
				e.printStackTrace();		
			}
		}
		//cart.add(new CartItem(product, 0, 1, 1));
		
		session.setAttribute("cart", cart);
		request.getRequestDispatcher("viewCart.jsp").forward(request, response);
	}
	

}
