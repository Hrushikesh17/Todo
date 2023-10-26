package com.Todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginservlet")
public class Loginservlet extends HttpServlet{
        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        	String email = req.getParameter("email");
    		String password = req.getParameter("pas");
    		boolean status= false;
    		
    		if(email.equals(null) || password.equals(null)) {
    			resp.setContentType("text/html");
    			PrintWriter p = resp.getWriter();
    			p.print("invalid email or password");
    			RequestDispatcher r = req.getRequestDispatcher("login.jsp");
    			r.include(req, resp);
    		}else {
    			  
    			  try{

    				  Class.forName("com.mysql.cj.jdbc.Driver");
    				  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/todo","root","root");
    				  PreparedStatement ps=con.prepareStatement("select * from user where email=? and pass=?");
    				  ps.setString(1,email);
    				  ps.setString(2, password);
    				  
    				  ResultSet rs = ps.executeQuery();
    				  status = rs.next();
    			      con.close();
    			      if(status == true) {
    			    	  resp.sendRedirect("service.jsp");
    			      }else {
    			    	  resp.setContentType("text/html");
    						PrintWriter p = resp.getWriter();
    						p.print("invalid email or password");
    						RequestDispatcher r = req.getRequestDispatcher("login.jsp");
    						r.include(req, resp);
    			      }
    			  }
    			  catch (Exception e) {
    					e.printStackTrace();
    				
    				}
        }
}
}