package com.company.jsp040;

public class javaTest {
	//멤버 변수
	private int a;
	private int b;
	
	//	생성자
	public javaTest() {
		super();
	}
	public javaTest(int a, int b) {
		super();
		this.a = a;
		this.b = b;
	}
	
	// 멤버 함수
	public String add() {
		return a+"+"+b+"="+(a+b);
	}
	
	public int getA() {
		return a;
	}
	public void setA(int a) {
		this.a = a;
	}
	public int getB() {
		return b;
	}
	public void setB(int b) {
		this.b = b;
	}
	@Override
	public String toString() {
		return "javaTest [a=" + a + ", b=" + b + "]";
	}

	
	
	
	
}
