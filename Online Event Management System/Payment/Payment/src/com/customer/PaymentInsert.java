package com.customer;

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
		
				
				String name = request.getParameter("name");
				String NIC = request.getParameter("NIC");
				String Email = request.getParameter("email");
				String branch = request.getParameter("branch");
				String accountnumber = request.getParameter("accountnumber");
				String city = request.getParameter("city");
				String amount = request.getParameter("amount");
				String cardNo = request.getParameter("cardNo");
				String cardName = request.getParameter("cardName");
				String expireDate = request.getParameter("expireDate");
				String cvv = request.getParameter("cvv");
				
				boolean isTrue;
				
				isTrue = PaymentDBUtil.insertPayment(name, NIC, Email, branch, accountnumber, city,  amount, cardNo, cardName, expireDate, cvv);
		
				if(isTrue == true) {
						RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
						dis.forward(request, response);
				}else {
					RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
					dis2.forward(request, response);
				}
	}

}
