package com.company.dto;

public class Board_dto {

	private int bno;
	private String bname;
	private String bpass;
	private String title;
	private String bcontent;
	private String bdate;
	private int bhit;
	private String bip;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getBname() {
		return bname;
	}

	public void setBname(String bname) {
		this.bname = bname;
	}

	public String getBpass() {
		return bpass;
	}

	public void setBpass(String bpass) {
		this.bpass = bpass;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBcontent() {
		return bcontent;
	}

	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}

	public String getBdate() {
		return bdate;
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public int getBhit() {
		return bhit;
	}

	public void setBhit(int bhit) {
		this.bhit = bhit;
	}

	public String getBip() {
		return bip;
	}

	public void setBip(String bip) {
		this.bip = bip;
	}

	public Board_dto() {
		super();
	}

	public Board_dto(int bno, String bname, String bpass, String title, String bcontent, String bdate, int bhit,
			String bip) {
		super();
		this.bno = bno;
		this.bname = bname;
		this.bpass = bpass;
		this.title = title;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.bhit = bhit;
		this.bip = bip;
	}
	@Override
	public String toString() {
		return "Mvcboard2_dto [bno=" + bno + ", bname=" + bname + ", bpass=" + bpass + ", title=" + title
				+ ", bcontent=" + bcontent + ", bdate=" + bdate + ", bhit=" + bhit + ", bip=" + bip + "]";
	}

}
