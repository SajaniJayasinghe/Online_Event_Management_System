package com.Payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		 
		boolean isTrue;
		
		isTrue = PaymentDBUtill.validate(email, password);
		
		if(isTrue == true){
			
			List<Payment> paymentDetails = PaymentDBUtill.getPayment(email);
			request.setAttribute("paymentDetails", paymentDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}		
		
		else {
			out.println("<script type='text/javascript'>");
 			out.println("alert('Your username or password is incorrect please try again !!!!');");
 			out.println("location='payment.jsp'");
 			out.println("</script>");
		}
	}

}