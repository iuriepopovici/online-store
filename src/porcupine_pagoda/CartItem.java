package porcupine_pagoda;

public class CartItem {
	private String itemName;
	private int itemId;
	private int nbItems;
	private double itemPrice;
	
	
	public CartItem(String itemName, int itemId, int nbItems, double itemPrice) {
		this.itemName = itemName;
		this.itemId = itemId;
		this.nbItems = nbItems;
		this.itemPrice = itemPrice;
	}
	
	public String getItemName() {
		return itemName;
	}
	
	public int getItemId() {
		return itemId;
	}
	
	public int getNbItems() {
		return nbItems;
	}
	
	public double getItemPrice() {
		return itemPrice;
	}
	
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	
	public void setNbItems(int nbItems) {
		this.nbItems = nbItems;
	}
	
	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}
	
}
