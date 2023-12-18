package com.company.paging;

public class Paging_dto {

	private int ino;
	private String name;
	private int price;
	private String description;

	public Paging_dto() {
		super();
	}

	public Paging_dto(int ino, String name, int price, String description) {
		super();
		this.ino = ino;
		this.name = name;
		this.price = price;
		this.description = description;
	}

	@Override
	public String toString() {
		return "Paging_dto [ino=" + ino + ", name=" + name + ", price=" + price + ", description=" + description + "]";
	}

	public int getIno() {
		return ino;
	}

	public void setIno(int ino) {
		this.ino = ino;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

}
