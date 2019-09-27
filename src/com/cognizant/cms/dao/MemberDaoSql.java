package com.cognizant.cms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;


import com.cognizant.cms.model.Admin;
import com.cognizant.cms.model.Member;


public class MemberDaoSql {
	
	public void addMember(Member member) {
		String fname=member.getFname() ;
	    String lname=member.getLname();
	    int age=member.getAge();
	    String gender=member.getGender();
	    String contactnumber=member.getContactnumber();
	    
	    System.out.println("MemberID "+member.getMemberid());
	    String memberid=member.getMemberid();
	    String password=member.getPassword();
	    String email=member.getEmail();
	    try {
	   		Connection con=ConnectionHandler.getConnection();
	   		    int id=0;
	   			PreparedStatement stmt=con.prepareStatement("insert into member (mem_id,fn,gender,ln,age,password,cnt_no,email,status) values('"+memberid+"','"+fname+"','"+gender+"','"+lname+"','"+age+"','"+password+"','"+contactnumber+"','"+email+"','"+id+"')");
	   			System.out.println("Member Saved Succeessfully");
	   			stmt.executeUpdate();
	   			} catch (SQLException e) {
	   			// TODO Auto-generated catch block
	   			e.printStackTrace();
	   		}  
	}
	public void loginMember(String memberId,String password) {
		String memId=memberId;
		
		try {
	   		   Connection con=ConnectionHandler.getConnection();
	   		   System.out.println();
	   			PreparedStatement stmt=con.prepareStatement("select * from member where mem_id='"+memId+"'");
				ResultSet rs=stmt.executeQuery(); 
				String passwordtemp = null;
	   			while(rs.next()){
	   				passwordtemp=rs.getString("password");
	   			}
	   			if(passwordtemp.equals(password)){
	   				System.out.println("Member Login succeesfully");
	   			}
	   			else{
	   				System.out.println("not successfully");
	   			}
	   		
	   			} catch (SQLException e) {
	   			// TODO Auto-generated catch block
	   			e.printStackTrace();
	   		}  
	}
	
public int verifysignup(Member ld) {
		

		String id = ld.getMemberid();
		String password= ld.getPassword();
		
		   Connection con=ConnectionHandler.getConnection();
		

		try {
			Statement s = con.createStatement();
			int status_id=0;
			ResultSet rs = s.executeQuery("select password= '" +  password + "'from member where mem_id='" + id  + "' and status='"+status_id+"'");

			if (rs.next()) {
				return 2;

			} 
			
			 rs = s.executeQuery("select password= '" +  password + "'from member where mem_id='" + id  + "'");

			if (rs.next()) {
				return 3;

			} 
			con.close();
		}
		catch (Exception e) {

			System.out.println(e);

		}
			return 1;
		
	}
	

	
	
}
