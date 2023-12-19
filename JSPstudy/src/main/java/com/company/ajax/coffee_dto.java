package com.company.ajax;

public class coffee_dto {

	private int cno;
	private String cname;
	private int cprice;

	public coffee_dto() {
		super();
	}

	public coffee_dto(int cno, String cname, int cprice) {
		super();
		this.cno = cno;
		this.cname = cname;
		this.cprice = cprice;
	}

	@Override
	public String toString() {
		return "coffee_dto [cno=" + cno + ", cname=" + cname + ", cprice=" + cprice + "]";
	}

	public int getCno() {
		return cno;
	}

	public void setCno(int cno) {
		this.cno = cno;
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public int getCprice() {
		return cprice;
	}

	public void setCprice(int cprice) {
		this.cprice = cprice;
	}

}
