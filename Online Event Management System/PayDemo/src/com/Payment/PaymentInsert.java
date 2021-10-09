package com.Payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/PaymentInsert")
public class PaymentInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	
	    String CustomerName = request.getParameter("customerName");
	    String PhoneNumber  = request.getParameter("phoneNumber");
	    String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		String NIC = request.getParameter("NIC");
		String Address  = request.getParameter("address");
		String CardNo = request.getParameter("cardNo");
		String CardName = request.getParameter("cardName");
		String CVV = request.getParameter("CVV");
		String ExpireDate = request.getParameter("expireDate");
		String Amount = request.getParameter("amount");
		
	    boolean isTrue;
	    
	    isTrue = PaymentDBUtill.insertpayment(CustomerName ,PhoneNumber, Email, Password, NIC,Address,CardNo,CardName,CVV,ExpireDate,Amount);
	 
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
