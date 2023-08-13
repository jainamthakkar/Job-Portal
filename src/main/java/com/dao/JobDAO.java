package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.lang.model.element.ExecutableElement;

import com.entity.Jobs;

public class JobDAO {

	private Connection conn;

	public JobDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean addJobs(Jobs j) {
		
		boolean f = false;
		try {
			String sql = "insert into jobs(title, discription, category, status, location) values(?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			
			int i = ps.executeUpdate();
			
			if(i == 1) f = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
}
