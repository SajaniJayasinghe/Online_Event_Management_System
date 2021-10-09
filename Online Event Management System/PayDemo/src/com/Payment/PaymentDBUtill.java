package com.Payment;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentDBUtill {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rst = null;
	

//validate Details
	
	public static boolean validate(String email, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from payment where email='"+email+"' and password='"+password+"'";
			rst = stmt.executeQuery(sql);
			
			if (rst.next()) {
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
	
	 
//Create ArrayList
	
	public static List<Payment> getPayment(String email) {
		
	        ArrayList<Payment> payment = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				String sql = "select * from payment where email='"+email+"'";
				rst = stmt.executeQuery(sql);
				
		   while (rst.next()) {    
			   
					   int id = rst.getInt(1);
			    	   String CustomerName = rst.getString(2);
			    	   String PhoneNumber = rst.getString(3);
			    	   String Email = rst.getString(4);		    	  
			    	   String Password =rst.getString(5);
			    	   String NIC =rst.getString(6);		
			    	   String Address = rst.getString(7);
			    	   String CardNo =rst.getString(8);
			    	   String CardName =rst.getString(9);
			    	   String CVV =rst.getString(10);
			    	   String ExpireDate =rst.getString(11);
			    	   String Amount =rst.getString(12);
			    	   
			    	   Payment st = new Payment(id,CustomerName ,PhoneNumber,Email,Password,NIC,Address,CardNo,CardName,CVV,ExpireDate,Amount);
			    	   payment.add(st);
				}    				
			} 
			
			 catch (Exception e) {
			  
		}
			
    //return list				
	return payment;	
		}

	
//Insert New Member
	
    public static boolean insertpayment(String CustomerName ,String PhoneNumber,String Email,String Password,String NIC,String Address,String CardNo,String CardName,String CVV,String ExpireDate,String Amount) {
	boolean isSuccess = false;
	
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
	    String sql = "insert into payment values (0 , '"+CustomerName+"' , '"+PhoneNumber+"' , '"+Email+"','"+Password+"','"+NIC+"','"+Address+"','"+CardNo+"','"+CardName+"','"+CVV+"','"+ExpireDate+"' , '"+Amount+"')";       	  
		int rst = stmt.executeUpdate(sql);
		
		if(rst > 0) {
			
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


//Update Data
    
    public static boolean updatepayment(String id,String CustomerName ,String PhoneNumber,String Email,String Address,String CardNo,String CardName,String CVV,String ExpireDate, String Amount) {
		boolean isSuccess = false;  
    
    
		try {
			
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "update payment set customerName= '"+CustomerName+"' ,phoneNumber = '"+PhoneNumber+"' , email='"+Email+"', address = '"+Address+"',cardNo = '"+CardNo+"',cardName = '"+CardName+"',CVV = '"+CVV+"',ExpireDate = '"+ExpireDate+"' ,amount = '"+Amount+"' " + "where id='"+id+"'";

    	    int rst = stmt.executeUpdate(sql);

    	    if(rst >0) {
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


	    
//Data Retrieve 
	    
		
    	public static List<Payment> getStaffDetails(String Id) {
    		
    		  int convertedID = Integer.parseInt(Id); 
    	      ArrayList<Payment> payment = new ArrayList<>();
    			
    			try {
    				
    				//get database connection
    				con = DBConnect.getConnection();
    				
    				//create a statement
    				stmt = con.createStatement();
    				String sql = "select * from payment where id='"+convertedID+"'";
    				rst = stmt.executeQuery(sql);
    				
    				 while (rst.next()) {
    					 
    				   int id = rst.getInt(1);
    				   String CustomerName = rst.getString(2);
			    	   String PhoneNumber = rst.getString(3);
			    	   String Email = rst.getString(4);		    	  
			    	   String Password =rst.getString(5);
			    	   String NIC =rst.getString(6);		
			    	   String Address = rst.getString(7);
			    	   String CardNo =rst.getString(8);
			    	   String CardName =rst.getString(9);
			    	   String CVV =rst.getString(10);
			    	   String ExpireDate =rst.getString(11);
			    	   String Amount =rst.getString(12);
			    	   
  			    	   Payment st = new Payment(id,CustomerName ,PhoneNumber,Email,Password,NIC,Address,CardNo,CardName,CVV,ExpireDate,Amount);
  			    	   payment.add(st);
  				}    
    		} 
    			
    			     catch (Exception e) {  
    				 e.printStackTrace();
    		}
    			
    			
    	return payment;	
    }   	



//Delete Data
    	
    	public static boolean deletepayment(String id) {
    		 
    		int convid = Integer.parseInt(id); 
    		
    		try {
    			
    			con = DBConnect.getConnection();
				stmt = con.createStatement();
    			String sql = "delete from payment where id='"+convid+"'";
    			int rst = stmt.executeUpdate(sql);
    		
    			if(rst >0) {
          	    	
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
}       	

