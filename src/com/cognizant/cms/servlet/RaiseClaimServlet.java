package com.cognizant.cms.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cognizant.cms.dao.ConnectionHandler;
import com.cognizant.cms.model.Member;

/**
 * Servlet implementation class RaiseClaimServlet
 */
@WebServlet(name = "RaiseClaim", urlPatterns = { "/RaiseClaim" })
public class RaiseClaimServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RaiseClaimServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 Connection con = ConnectionHandler.getConnection();
		Member m = new Member();
	 String id=request.getParameter("memid");
	 System.out.println(id);
	try {
		PreparedStatement stmt  = con.prepareStatement("select * from member where mem_id=?");
		stmt.setString(1, id);
		ResultSet rs = stmt.executeQuery();
		while(rs.next())
		{
			String fname = rs.getString("fn");
			String lname=rs.getString("ln");
			String gender  = rs.getString("gender");
			String cno = rs.getString("cnt_no");
			int age =rs.getInt("age");
			m.setMemberid(id);
			m.setFname(fname);
			m.setLname(lname);
			m.setAge(age);
			m.setGender(gender);
			m.setContactnumber(cno);
			
			
			
			
		}
	request.setAttribute("y", id);
	request.setAttribute("x", m);				
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} 
	

	RequestDispatcher rd = request.getRequestDispatcher("/claimRaise.jsp");
	rd.forward(request, response);
	}
}
