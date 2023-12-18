package com.company.paging;

import java.util.ArrayList;

public class Paging_util {

	Paging_dao dao;
	// 1. 전체 게시판 개수 : 256
	int listTotal;
	// 2. 한 페이지당 보여줄 (레코드-튜플-줄) 개수 : 10개 #
	int onepagelimit;
	// 3. 하단 전체 페이지 : 256/10 = 26, 512/10 = 52, 500/10 = 50
	int pageAll;

	// DB 0 10 20 30 40 50 60 70 80 90
	// 1 2 3 4 5 6 7 8 9 10 다음
	// 이전 11 12 13 14 15 16 17 18 19 20

	// 4. 시작 번호
	int pstartno;
	// 5. 하단 네비게이션 ( 보여줄 개수 )
	int bottomnavi;
	// 6. 현재 네비게이션 번호 #
	int currentBtn;
	// 7. 현재 네비게이션 번호의 시작번호
	int startBtn;
	// 8. 현재 네비게이션 번호의 끝번호
	int endBtn;

	ArrayList<Paging_dto> list10;

	public Paging_util() {

	}

	public Paging_util(int pstartno) {
		this();
		this.pstartno = pstartno;
		dao = new Paging_dao(); // 1. 전체 게시판 개수 : 256
		listTotal = dao.totalcnt(); // 2. 한 페이지당 보여줄 (레코드-튜플-줄) 개수 : 10개 #
		onepagelimit = 10; // # 나중에 손댐

		// 3. 하단 전체 페이지 : 256/10 = 26, 512/10 = 52, 500/10 = 50
		pageAll = (int) Math.ceil(listTotal / onepagelimit);

		bottomnavi = 10; // 5. 하단 네비게이션 ( 보여줄 개수 ) // #나중에 손댐
		currentBtn = (int) Math.ceil((pstartno + 1) / (double) onepagelimit); // 6. 현재 네비게이션 번호 #

		startBtn = (((currentBtn != 1 ? currentBtn : 2) - 1) / bottomnavi) * bottomnavi + 1; // 7. 현재 네비게이션 번호의 시작번호

		endBtn = startBtn - 1 + bottomnavi; // 8. 현재 네비게이션 번호의 끝번호
		if (pageAll < endBtn) {
			endBtn = pageAll;
		}
		list10 = dao.list10(pstartno);
	}

	public Paging_util(int listTotal, int onepagelimit, int pageAll, int pstartno, int bottomnavi, int currentBtn,
			int startBtn, int endBtn) {
		super();
		this.listTotal = listTotal;
		this.onepagelimit = onepagelimit;
		this.pageAll = pageAll;
		this.pstartno = pstartno;
		this.bottomnavi = bottomnavi;
		this.currentBtn = currentBtn;
		this.startBtn = startBtn;
		this.endBtn = endBtn;
	}

	@Override
	public String toString() {
		return "Paging_util [dao=" + dao + ", listTotal=" + listTotal + ", onepagelimit=" + onepagelimit + ", pageAll="
				+ pageAll + ", pstartno=" + pstartno + ", bottomnavi=" + bottomnavi + ", currentBtn=" + currentBtn
				+ ", startBtn=" + startBtn + ", endBtn=" + endBtn + ", list10=" + list10 + "]";
	}

	public Paging_dao getDao() {
		return dao;
	}

	public void setDao(Paging_dao dao) {
		this.dao = dao;
	}

	public int getListTotal() {
		return listTotal;
	}

	public void setListTotal(int listTotal) {
		this.listTotal = listTotal;
	}

	public int getOnepagelimit() {
		return onepagelimit;
	}

	public void setOnepagelimit(int onepagelimit) {
		this.onepagelimit = onepagelimit;
	}

	public int getPageAll() {
		return pageAll;
	}

	public void setPageAll(int pageAll) {
		this.pageAll = pageAll;
	}

	public int getPstartno() {
		return pstartno;
	}

	public void setPstartno(int pstartno) {
		this.pstartno = pstartno;
	}

	public int getBottomnavi() {
		return bottomnavi;
	}

	public void setBottomnavi(int bottomnavi) {
		this.bottomnavi = bottomnavi;
	}

	public int getCurrentBtn() {
		return currentBtn;
	}

	public void setCurrentBtn(int currentBtn) {
		this.currentBtn = currentBtn;
	}

	public int getStartBtn() {
		return startBtn;
	}

	public void setStartBtn(int startBtn) {
		this.startBtn = startBtn;
	}

	public int getEndBtn() {
		return endBtn;
	}

	public void setEndBtn(int endBtn) {
		this.endBtn = endBtn;
	}

	public ArrayList<Paging_dto> getList10() {
		return list10;
	}

	public void setList10(ArrayList<Paging_dto> list10) {
		this.list10 = list10;
	}

	

}
