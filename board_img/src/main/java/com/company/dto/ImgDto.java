package com.company.dto;

public class ImgDto {

	private int ino;
	private String name;
	private int price;
	private String description;
	private String img;

	public ImgDto() {
		super();
	}

	public ImgDto(int ino, String name, int price, String description, String img) {
		super();
		this.ino = ino;
		this.name = name;
		this.price = price;
		this.description = description;
		this.img = img;
	}

	@Override
	public String toString() {
		return "ImgDto [ino=" + ino + ", name=" + name + ", price=" + price + ", description=" + description + ", img="
				+ img + "]";
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

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
