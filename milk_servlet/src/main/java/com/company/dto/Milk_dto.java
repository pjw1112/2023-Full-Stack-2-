package com.company.dto;

public class Milk_dto {

	private String mname;
	private int mprice;
	private int mno;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public int getMprice() {
		return mprice;
	}
	public void setMprice(int mprice) {
		this.mprice = mprice;
	}
	
	public Milk_dto(int mno,String mname, int mprice ) {
		super();
		this.mname = mname;
		this.mprice = mprice;
		this.mno = mno;
	}
	public Milk_dto() {
		super();
	}
	@Override
	public String toString() {
		return "Milk_dto [mname=" + mname + ", mprice=" + mprice + ", mno=" + mno + "]";
	}
	
	
	
}
