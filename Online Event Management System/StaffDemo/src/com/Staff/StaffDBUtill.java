package com.Staff;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



    public class StaffDBUtill {
    	
    	private static boolean isSuccess;
    	private static Connection con = null;
    	private static Statement stmt = null;
    	private static ResultSet rst = null;
    	

//validate Details
    	
    	public static boolean validate(String username, String password) {
	
    		try {
    			con = DBConnect.getConnection();
    			stmt = con.createStatement();
    			String sql = "select * from staffmember where  username='"+username+"' and password='"+password+"'";
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
    	
    	public static List<Staff> getStaff(String userName) {
    		
    	        ArrayList<Staff> staff = new ArrayList<>();
    			
    			try {
    				
    				con = DBConnect.getConnection();
    				stmt = con.createStatement();
    				String sql = "select * from staffmember where username='"+userName+"'";
    				rst = stmt.executeQuery(sql);
    				
    		   while (rst.next()) {    
    			   
    					   int id = rst.getInt(1);
    			    	   String StaffMemberName = rst.getString(2);
    			    	   String PhoneNumber = rst.getString(3);
    			    	   String Email = rst.getString(4);		    	  
    			    	   String UserName = rst.getString(5);
    			    	   String Password =rst.getString(6);
    			    	   String NIC =rst.getString(7);
    					
    					   Staff st = new Staff(id,StaffMemberName ,PhoneNumber,Email,UserName,Password,NIC);
    					   staff.add(st);
    				}    				
    			} 
    			
    			 catch (Exception e) {
    			  
    		}
     
    			//return list		
    			
    	return staff;	
    		}
    	
    	
    	
 //Insert New Member
    	
    	    public static boolean insertstaff(String StaffMemberName ,String PhoneNumber,String Email,String UserName,String Password,String NIC) {
    		boolean isSuccess = false;
    		
    		
        	try {
        		con = DBConnect.getConnection();
        		stmt = con.createStatement();
        	    String sql = "insert into staffmember values (0 , '"+StaffMemberName+"' , '"+PhoneNumber+"' , '"+Email+"', '"+UserName+"','"+Password+"','"+NIC+"')";       	  
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
    	    
    	    public static boolean updatestaff(String id, String StaffMemberName ,String PhoneNumber,String Email,String UserName,String Password,String NIC) {
        		boolean isSuccess = false;  
    	    
    	    
        		try {
        			
        			con = DBConnect.getConnection();
            		stmt = con.createStatement();
            	    String sql = "update staffmember set staffMemberName= '"+StaffMemberName+"' ,phoneNumber = '"+PhoneNumber+"' , email='"+Email+"',username= '"+UserName+"', password='"+Password+"' ,NIC='"+NIC+"'" + "where id='"+id+"'";
 
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
    	    
    		
        	public static List<Staff> getStaffDetails(String Id) {
        		
        		  int convertedID = Integer.parseInt(Id); 
        	      ArrayList<Staff> staff = new ArrayList<>();
        			
        			try {
        				
        				//get database connection
        				con = DBConnect.getConnection();
        				
        				//create a statement
        				stmt = con.createStatement();
        				String sql = "select * from staffmember where id='"+convertedID+"'";
        				rst = stmt.executeQuery(sql);
        				
        				 while (rst.next()) {
        					 
      					   int id = rst.getInt(1);
      			    	   String StaffMemberName = rst.getString(2);
      			    	   String PhoneNumber = rst.getString(3);
      			    	   String Email = rst.getString(4);		    	  
      			    	   String UserName = rst.getString(5);
      			    	   String Password =rst.getString(6);
      			    	   String NIC =rst.getString(7);
      					
      					   Staff st = new Staff(id,StaffMemberName ,PhoneNumber,Email,UserName,Password,NIC);
      					   staff.add(st);
      				}    
        		} 
        			
        			     catch (Exception e) {  
        				 e.printStackTrace();
        		}
        			
        			
        	return staff;	
        }   	
 
    
    
 //Delete Data
        	
        	public static boolean deletestaff(String id) {
        		 
        		int convid = Integer.parseInt(id); 
        		
        		try {
        			
        			con = DBConnect.getConnection();
    				stmt = con.createStatement();
        			String sql = "delete from staffmember where id='"+convid+"'";
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
        	
        	
        	
        	
        	