package com.cts.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import org.springframework.stereotype.Component;

@Component
public class Service {
	public List<Flight> getMenuItemList() throws SQLException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();
		List<Flight> l = new ArrayList<>();

		con = c.getConnection();
		PreparedStatement stmt = con.prepareStatement("select * from flights");
		ResultSet r = stmt.executeQuery();

		while (r.next()) {
			l.add(new Flight(r.getInt("f_id"), r.getString("f_name"), r.getString("f_sour"), r.getString("f_dest"),
					r.getString("f_type"), r.getInt("f_stops"), r.getFloat("f_price")));
		}
		con.close();

		return l;
	}

	public void modifyItem(Flight fl) throws SQLException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();

		con = ConnectionHandler.getConnection();
		String name = fl.getF_name();
		String sour = fl.getF_sour();
		String type = fl.getF_type();
		String dest = fl.getF_dest();
		int stops = fl.getF_stops();
		float price = fl.getF_price();
		int id = fl.getF_id();
		PreparedStatement stmt = con.prepareStatement("UPDATE flights SET f_name=?," + "f_sour=?," + "f_dest=?,"
				+ "f_type=?," + "f_stops=?," + "f_price=?" + "WHERE f_name=?");
		stmt.setString(1, name);
		stmt.setNString(2, sour);
		stmt.setString(3, dest);
		stmt.setString(4, type);
		stmt.setInt(5, stops);
		stmt.setFloat(6, price);
		stmt.setString(7, name);
		stmt.execute();
		con.close();
	}

	public boolean deleteItem(int f_id) throws SQLException {
		Connection con;
		con = ConnectionHandler.getConnection();
		PreparedStatement stmt = con.prepareStatement("delete from flights where f_id=?");
		stmt.setInt(1, f_id);
		boolean x = stmt.execute();

		return x;

	}

	public Flight getItem(int f_id) throws SQLException {
		List<Flight> list = getMenuItemList();
		Flight fl = new Flight();
		for (Flight f : list) {
			if (f.getF_id() == f_id) {
				fl = f;
			}
		}
		return fl;
	}

	public void addItem(Flight fl) throws SQLException {
		Connection con;
		ConnectionHandler c = new ConnectionHandler();

		con = ConnectionHandler.getConnection();
		String name = fl.getF_name();
		String sour = fl.getF_sour();
		String dest = fl.getF_dest();
		String type = fl.getF_type();
		int stops = fl.getF_stops();
		float price = fl.getF_price();
		PreparedStatement stmt = con.prepareStatement(
				"insert into flights (f_name,f_sour,f_dest,f_type,f_stops,f_price) values(?,?,?,?,?,?)");
		stmt.setString(1, name);
		stmt.setString(2, sour);
		stmt.setString(3, dest);
		stmt.setString(4, type);
		stmt.setInt(5, stops);
		stmt.setFloat(6, price);
		stmt.execute();

	}
}
