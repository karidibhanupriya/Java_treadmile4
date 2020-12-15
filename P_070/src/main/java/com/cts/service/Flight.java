package com.cts.service;

public class Flight {
	private int f_id;
	private String f_name;
	private String f_sour;
	private String f_dest;
	private String f_type;
	private int f_stops;
	private float f_price;

	public Flight() {

	}



	public Flight(int f_id, String f_name, String f_sour, String f_dest, String f_type, int f_stops, float f_price) {
		super();
		this.f_id = f_id;
		this.f_name = f_name;
		this.f_sour = f_sour;
		this.f_dest = f_dest;
		this.f_type = f_type;
		this.f_stops = f_stops;
		this.f_price = f_price;
	}



	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_sour() {
		return f_sour;
	}

	public void setF_sour(String f_sour) {
		this.f_sour = f_sour;
	}
	public String getF_dest() {
		return f_dest;
	}

	public void setF_dest(String f_dest) {
		this.f_dest = f_dest;
	}

	public String getF_type() {
		return f_type;
	}

	public void setF_type(String f_type) {
		this.f_type = f_type;
	}

	public int getF_stops() {
		return f_stops;
	}

	public void setF_stops(int f_stops) {
		this.f_stops = f_stops;
	}

	public float getF_price() {
		return f_price;
	}

	public void setF_price(float f_price) {
		this.f_price = f_price;
	}

	public int getF_id() {
		return f_id;
	}

	public void setF_id(int f_id) {
		this.f_id = f_id;
	}
}
