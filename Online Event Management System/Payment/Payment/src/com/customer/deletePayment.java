package com.customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/deletePayment")
public class deletePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			String id = request.getParameter("id");
			
			boolean isTrue;
			
			isTrue = PaymentDBUtil.deletePayment(id);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("deleteSuccess.jsp");
				dis.forward(request, response);
				
			}
			else {

				List<Customer> cusDetails = PaymentDBUtil.getpaymentDetails(id);
				request.setAttribute("cusDetails", cusDetails);
				
			    RequestDispatcher dis2 = request.getRequestDispatcher("deleteSuccess.jsp");
			    dis2.forward(request, response);
		}
		
	}

}
