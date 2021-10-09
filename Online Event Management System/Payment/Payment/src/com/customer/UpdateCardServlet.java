package com.customer;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCardServlet")
public class UpdateCardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
					
					String id = request.getParameter("id");
					String cardNo = request.getParameter("cardNo");
					String cardName = request.getParameter("cardName");
					String expireDate = request.getParameter("expireDate");
					String cvv = request.getParameter("cvv");
					
					boolean isTrue;
					
					
					isTrue = PaymentDBUtil.updatepayment(id,cardNo, cardName, expireDate, cvv);
					
					if(isTrue == true) {
						
						List<Customer> cusDetails = PaymentDBUtil.getpaymentDetails(id);
						request.setAttribute("cusDetails", cusDetails);
						
						RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
						dis.forward(request, response);
					}
					else {
						
						List<Customer> cusDetails = PaymentDBUtil.getpaymentDetails(id);
						request.setAttribute("cusDetails", cusDetails);
						
						RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
						dis.forward(request, response);
					}
		
	}

}
