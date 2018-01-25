package com.inoesis.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.inoesis.beans.FeedBack;
import com.inoesis.beans.RegistrationBean;
import com.inoesis.jdbcutil.MySqlUtility;

import utility.JdbcUtility;

public class RegistrationDao {
	public static int setRegistrationBean(RegistrationBean r){
		Connection con=JdbcUtility.getConnection();
		//Connection con=JdbcUtility.getConnection();
		System.out.println("RegistrationDao is in.");
		String role="user";
		try{
			PreparedStatement pst=con.prepareStatement("insert into bookstore(firstName,lastName,emailAddress,"
					+ "mobileNo,state,city,college,branch,semester,password,role) values(?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1,r.getFirstName());
			pst.setString(2,r.getLastName());
			pst.setString(3,r.getEmailAddress());
			pst.setString(4,r.getMobileNo());
			pst.setString(5,r.getState());
			pst.setString(6,r.getCity());
			pst.setString(7,r.getCollege());
			pst.setString(8,r.getBranch());
			pst.setString(9,r.getSemester());
			pst.setString(10,r.getPassword());
			pst.setString(11,role);
			System.out.println("data save in DB");
			return pst.executeUpdate();
			
		}catch(SQLException e){
			e.printStackTrace();
		}
		return 0;
		
	}
	public static ArrayList getPassword(String mail){
		Connection con=JdbcUtility.getConnection();
		//Connection con=JdbcUtility.getConnection();
		ArrayList ar=new ArrayList();
		try{
			PreparedStatement pst=con.prepareStatement("select password,firstName,role from bookstore where  emailAddress=?");
			pst.setString(1,mail);			
			ResultSet rs= pst.executeQuery();
			while(rs.next()){
			ar.add(rs.getString(1));
			ar.add(rs.getString(2));
			ar.add(rs.getString(3));
			}
			return ar;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return ar;
		
	}
	public static ArrayList<FeedBack> getFeedBack(){
		Connection con = JdbcUtility.getConnection();
		ArrayList<FeedBack> al = new ArrayList<FeedBack>();
		PreparedStatement pst = null;
		ResultSet rs = null;
		final String sql = "select * from feedback order by feedbackID desc limit 3";
		try{
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				FeedBack fb= new FeedBack();
				fb.setFeedbackDetails(rs.getString("feedbackDetails"));
				fb.setFirstName(rs.getString("firstName"));
				fb.setCollege(rs.getString("college"));
				
				al.add(fb);
			}
			System.out.println("feedback done");
		}catch(SQLException e){
			e.printStackTrace();
		}
		return al;
	}
}
