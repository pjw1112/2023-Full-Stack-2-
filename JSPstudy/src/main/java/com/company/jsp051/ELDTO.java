package com.company.jsp051;

public class ELDTO {

	private String name;
	private int age;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public ELDTO() {
		super();
	}
	public ELDTO(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}
	@Override
	public String toString() {
		return "ELDTO [name=" + name + ", age=" + age + "]";
	}

}