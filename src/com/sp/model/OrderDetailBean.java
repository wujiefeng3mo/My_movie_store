package com.sp.model;

/**
 * @author Jiefeng Wu
 * This is a model class to stands for  the detail order
 */
public class OrderDetailBean {

	private long ordesIid;
	private long goodsId;
	private int nums;
	public long getGoodsId() {
		return goodsId;
	}
	public void setGoodsId(long goodsId) {
		this.goodsId = goodsId;
	}
	public int getNums() {
		return nums;
	}
	public void setNums(int nums) {
		this.nums = nums;
	}
	public long getOrdesIid() {
		return ordesIid;
	}
	public void setOrdesIid(long ordesIid) {
		this.ordesIid = ordesIid;
	} 
}
