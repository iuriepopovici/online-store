package porcupine_pagoda;

public class CartItem {
	private String itemName;
	private int itemId;
	private int nbItems;
	private double itemPrice;
	
	private String sku;
	private double weight;
	private String color;
	private String imgSm, imgMd, imgLg;
	private String size;
	
	public CartItem() {
		this.itemName = "Product";
		this.itemId = -1;
		this.nbItems = 0;
		this.itemPrice = 0.00;
		
		this.sku = "000000";
		this.weight = 0.0;
		this.color = "clear";
		this.imgSm = "img/merch/notAvail_128.png";
		this.imgMd = "img/merch/notAvail_256.png";
		this.imgLg = "img/merch/notAvail_720.png";
	}
	
	public CartItem(String itemName, int itemId, int nbItems, double itemPrice) {
		this.itemName = itemName;
		this.itemId = itemId;
		this.nbItems = nbItems;
		this.itemPrice = itemPrice;
		this.imgSm = "img/merch/notAvail_128.png";
		this.imgMd = "img/merch/notAvail_256.png";
		this.imgLg = "img/merch/notAvail_720.png";
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

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getImgSm() {
		return imgSm;
	}

	public void setImgSm(String imgSm) {
		this.imgSm = imgSm;
	}

	public String getImgMd() {
		return imgMd;
	}

	public void setImgMd(String imgMd) {
		this.imgMd = imgMd;
	}

	public String getImgLg() {
		return imgLg;
	}

	public void setImgLg(String imgLg) {
		this.imgLg = imgLg;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public double getWeight() {
		return weight;
	}

	public void setWeight(double weight) {
		this.weight = weight;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}
	
	
	
}