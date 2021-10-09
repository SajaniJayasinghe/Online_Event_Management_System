 package com.Staff;

public class Staff {

	//define the field
	private int id;
    private String StaffMemberName ;
    private String PhoneNumber;
    private String Email;
    private String UserName;
    private String Password;
    private String NIC;
	
  //set the attribute
    public Staff(int id, String staffMemberName, String phoneNumber, String email, String userName, String password,
			String NIC) {
    	
    	this.id = id;
		this.StaffMemberName = staffMemberName;		
		this.PhoneNumber = phoneNumber;
		this.Email = email;
		this.UserName = userName;
		this.Password = password;
		this.NIC = NIC;
    }

  //generate getters
            public int getId() {
	           return id;
             }

            public String getStaffMemberName() {
	           return StaffMemberName;
             }        

            public String getPhoneNumber() {
	            return PhoneNumber;
             }
            
            public String getEmail() {
            	return Email;
             }
            
            public String getUserName() {
	            return UserName;
             }

            public String getPassword() {
	            return Password;
             }

             public String getNIC() {
	             return NIC;
            }
    
}
