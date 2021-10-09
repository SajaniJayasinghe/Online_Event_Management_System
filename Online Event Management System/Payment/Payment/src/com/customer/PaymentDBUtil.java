package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static boolean validate(String name ,String email) {
	    

		try {
			con = PaymentDBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where name='"+name+"' and email ='"+email+"'";
			rs = stmt.executeQuery(sql);
			
			   if (rs.next()) {
				isSuccess = true;
			} 
			
			else {
				isSuccess = false;
			}	
		} 
			     catch (Exception e) {
			     e.printStackTrace();
		}
		return isSuccess;		
	}
	
	
	public static List<Customer> getCustomer(String Name) {
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		try {
			
			con = PaymentDBConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from customer where name='"+Name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String NIC = rs.getString(3);
				String email = rs.getString(4);
				String branch = rs.getString(5);
				String accountnumber = rs.getString(6);
				String city = rs.getString(7);
				String amount= rs.getString(8);
				String cardNo = rs.getString(9);
				String cardName = rs.getString(10);
				String expireDate = rs.getString(11);
				String cvv = rs.getString(12);	
				

				Customer c = new Customer(id,name,NIC,email,branch,accountnumber,city,amount,cardNo,cardName,expireDate,cvv);
				cus.add(c);
			
			}
			
		} catch (Exception e) {
			
	}
		
return cus;	
	}	
	



	public static boolean insertPayment(String name,String NIC, String email, String branch, String accountnumber, String city, String amount, String cardNo, String cardName, String expireDate, String cvv) {
	
	boolean isSuccess = false;
	
	try {
		con = PaymentDBConnection.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into customer values (0,'"+name+"','"+NIC+"','"+email+"','"+branch+"','"+accountnumber+"','"+city+"','"+amount+"','"+cardNo+"','"+cardName+"','"+expireDate+"','"+cvv+"')";
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




public static boolean updatepayment(String id,String cardNo, String cardName, String expireDate, String cvv) {
	
	
	try {
		
		con = PaymentDBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "update customer set cardNo='"+cardNo+"',cardName='"+cardName+"',expireDate='"+expireDate+"',cvv='"+cvv+"'"
				+ "where id='"+id+"'";
		
		int rs = stmt.executeUpdate(sql);
		
		if(rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess; 
}



public static List<Customer> getpaymentDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<Customer> cus = new ArrayList<>();
	
	try {
		
		con = PaymentDBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "select * from customer where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id = rs.getInt(1);
			String name = rs.getString(2);
			String NIC = rs.getString(3);
			String email = rs.getString(4);
			String branch = rs.getString(5);
			String accountnumber = rs.getString(6);
			String city = rs.getString(7);
			String amount = rs.getString(8);
			String cardNo = rs.getString(9);
			String cardName = rs.getString(10);
			String expireDate = rs.getString(11);
			String cvv = rs.getString(12);
			

			Customer c = new Customer(id, name, NIC, email, branch, accountnumber,city, amount, cardNo, cardName, expireDate, cvv);
			cus.add(c);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return cus;	
}



public static boolean deletePayment(String id) {
	
	int convid = Integer.parseInt(id);
	
	try {
		
		con = PaymentDBConnection.getConnection();
		stmt = con.createStatement();
		String sql = "delete from customer where id='"+convid+"'";
		int rs = stmt.executeUpdate(sql);
		
		if (rs > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
}







