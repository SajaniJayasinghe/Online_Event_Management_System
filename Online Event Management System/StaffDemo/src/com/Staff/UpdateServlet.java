 package com.Staff;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
		String id = request.getParameter("id");
        String StaffMemberName = request.getParameter("staffMemberName");
	    String PhoneNumber  = request.getParameter("phoneNumber");
	    String Email = request.getParameter("email");
	    String UserName = request.getParameter("username");
		String Password = request.getParameter("password");
		String NIC = request.getParameter("NIC");
		
		  
		boolean isTrue;
		
		    isTrue = StaffDBUtill.updatestaff(id, StaffMemberName, PhoneNumber, Email, UserName, Password, NIC);
		
		if(isTrue == true) {
			
			List<Staff> staffDetails = StaffDBUtill.getStaffDetails(id);		
			request.setAttribute("staffDetails", staffDetails);
						
			RequestDispatcher dis =  request.getRequestDispatcher("useraccount.jsp");
		    dis.forward(request, response);	
		}
		   
		else {

		    List<Staff> staffDetails = StaffDBUtill.getStaffDetails(id);		
			request.setAttribute("staffDetails", staffDetails);
				
			RequestDispatcher dis =  request.getRequestDispatcher("UnSuccess.jsp");
		    dis.forward(request, response);
		}
	}
}
