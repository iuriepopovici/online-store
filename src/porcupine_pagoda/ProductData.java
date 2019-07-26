package porcupine_pagoda;


public class ProductData {
	private String itemName;
	private int itemId;
	private int quantityAvail;
	private double itemPrice;
	
	private String sku;
	private double weight;
	private String color;
	private String imgSm, imgMd, imgLg;
	
	public ProductData() {
		this.itemName = "Product";
		this.itemId = -1;
		this.quantityAvail = 0;
		this.itemPrice = 0.00;
		
		this.sku = "000000";
		this.weight = 0.0;
		this.color = "clear";
		this.imgSm = "img/merch/notAvail.png";
		this.imgMd = "img/merch/notAvail.png";
		this.imgLg = "img/merch/notAvail.png";
	}
	
	public String getItemName() {
		return itemName;
	}
	
	public int getItemId() {
		return itemId;
	}
	
	public int getQuantityAvail() {
		return quantityAvail;
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
	
	public void setQuantityAvail(int quantityAvail) {
		this.quantityAvail = quantityAvail;
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
	
}