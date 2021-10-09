package com.Payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 String id = request.getParameter("id");		 
		    boolean isTrue;
		    
		    isTrue = PaymentDBUtill.deletepayment(id);
		 
		
		    if(isTrue == true) {	    	
		 		
	 			RequestDispatcher dis = request.getRequestDispatcher("deleteSuccess.jsp");
				dis.forward(request, response);
	 			
		    }
		    
		    else {
		    	
		    	List<Payment> paymentDetails = PaymentDBUtill.getPayment(id);
				request.setAttribute("paymentDetails", paymentDetails);
		    	
				RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
				dis.forward(request, response);
			
		    }	
	}

}
