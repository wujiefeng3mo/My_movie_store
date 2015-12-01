package com.sp.model;


/*
 * This is the model, and according to the orders
 */
public class OrderBean {
	
	
	private long ordersId ;
	private long userId;  
	private java.util.Date orderDate;
	private String payMode ;
	private boolean isPayed;
	private float totalPrice ;
	
	public boolean isPayed() {
		return isPayed;
	}
	public void setPayed(boolean isPayed) {
		this.isPayed = isPayed;
	}
	public java.util.Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(java.util.Date orderDate) {
		this.orderDate = orderDate;
	}
	public long getOrdersId() {
		return ordersId;
	}
	public void setOrdersId(long ordersId) {
		this.ordersId = ordersId;
	}
	public String getPayMode() {
		return payMode;
	}
	public void setPayMode(String payMode) {
		this.payMode = payMode;
	}
	public float getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(float totalPrice) {
		this.totalPrice = totalPrice;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
}
