package com.Payment;

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
		    String CustomerName = request.getParameter("customerName");
		    String PhoneNumber  = request.getParameter("phoneNumber");
		    String Email = request.getParameter("email");
			String Address  = request.getParameter("address");
			String CardNo = request.getParameter("cardNo");
			String CardName = request.getParameter("cardName");
			String CVV = request.getParameter("CVV");
			String ExpireDate = request.getParameter("expireDate");
			String Amount = request.getParameter("amount");
			
			boolean isTrue;
			
		    isTrue = PaymentDBUtill.updatepayment(id,CustomerName ,PhoneNumber, Email,Address,CardNo,CardName,CVV,ExpireDate,Amount);
		
		if(isTrue == true) {
			
			List<Payment> paymentDetails = PaymentDBUtill.getStaffDetails(id);		
			request.setAttribute("paymentDetails", paymentDetails);
						
			RequestDispatcher dis =  request.getRequestDispatcher("useraccount.jsp");
		    dis.forward(request, response);	
		}
		   
		else {

		    List<Payment> paymentDetails = PaymentDBUtill.getStaffDetails(id);		
			request.setAttribute("paymentDetails", paymentDetails);
				
			RequestDispatcher dis =  request.getRequestDispatcher("UnSuccess.jsp");
		    dis.forward(request, response);
		}
	}
}
