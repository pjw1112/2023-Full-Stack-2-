package com.company.jsp040;

public class MyRandom {// 1~10사이의 난수 구해줌

	public int random() {

		return (int)Math.floor(Math.random() * 10) + 1;
	}
}
