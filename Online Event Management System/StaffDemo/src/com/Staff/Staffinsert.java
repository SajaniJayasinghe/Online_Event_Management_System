package com.Staff;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Staffinsert")
public class Staffinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 
	    String StaffMemberName = request.getParameter("staffMemberName");
	    String PhoneNumber  = request.getParameter("phoneNumber");
	    String Email = request.getParameter("email");
	    String UserName = request.getParameter("username");
		String Password = request.getParameter("password");
		String NIC = request.getParameter("NIC");
		
	    
	    boolean isTrue;
	    
	    isTrue = StaffDBUtill.insertstaff( StaffMemberName ,PhoneNumber, Email, UserName, Password, NIC);
	 
	    if(isTrue == true) {	    	
 		
 			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
 			
	    }
	    
	    else {
	    	
			RequestDispatcher dis2 = request.getRequestDispatcher("UnSuccess.jsp");
			dis2.forward(request, response);
		}
	 }

}
