package porcupine_pagoda;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

/**
 * Servlet implementation class TShirtQuery
 */
@WebServlet("/t_shirt")
public class TShirtQuery extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TShirtQuery() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ProductData blueShirt = queryItem(1);
		ProductData orangeShirt = queryItem(2);
		request.setAttribute("blueShirt", blueShirt);
		request.setAttribute("orangeShirt", orangeShirt);
		request.getRequestDispatcher("item.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	protected ProductData queryItem(int id) {
		ProductData item = new ProductData();
		try {			
			Connection conn = DBConnect.initDB();
			PreparedStatement itemSt = conn.prepareStatement("select * from Product where product_id=?");
			itemSt.setInt(1, 1);
			ResultSet rsProd = itemSt.executeQuery();
			
			if(rsProd.next()) {
				item.setItemName(rsProd.getString("product_name"));
				item.setItemId(rsProd.getInt("product_id"));
				item.setItemPrice(rsProd.getDouble("price"));
				item.setColor(rsProd.getString("product_color"));
				item.setSku(rsProd.getString("product_sku"));
				item.setWeight(rsProd.getDouble("product_weight"));
				item.setQuantityAvail(rsProd.getInt("quantity_avail"));
				itemSt.close();
			}
			queryImgs(id, item, conn);
			conn.close();			
			return item;
		} catch (Exception e) {
			System.err.println("Database Connection Failed");
			e.printStackTrace();		
		}
		return item;
	}
	
	protected void queryImgs(int id, ProductData item, Connection conn) {
		try {			
			//Connection conn = DBConnect.initDB();
			PreparedStatement imgSt = conn.prepareStatement("select * from Product_Images where product_id=?");
			imgSt.setInt(1, 1);
			ResultSet rsImg = imgSt.executeQuery();
			
			if(rsImg.next()) {
				item.setImgSm(rsImg.getString("image_default_sm"));
				item.setImgMd(rsImg.getString("image_default_md"));
				item.setImgLg(rsImg.getString("image_default_lg"));
				imgSt.close();
			}			
		} catch (Exception e) {
			System.err.println("Database Connection Failed");
			e.printStackTrace();		
		}
	}

}
