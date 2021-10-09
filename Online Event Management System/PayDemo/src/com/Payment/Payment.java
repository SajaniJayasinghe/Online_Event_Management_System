package com.Payment;

public class Payment {

	//define the field
	
	private int id;
    private String CustomerName ;
    private String PhoneNumber;
    private String Email;
    private String Password;
    private String NIC;
    private String Address;
    private String CardNo;
    private String CardName;
    private String CVV;
    private String ExpireDate;
    private String Amount;
    
    //set the attribute
	
    public Payment(int id, String customerName, String phoneNumber, String email, String password,
			String NIC,String address ,String cardNo ,String cardName ,String CVV,String expireDate,String amount ) {
    	
    	this.id = id;
		this.CustomerName = customerName;		
		this.PhoneNumber = phoneNumber;
		this.Email = email;
		this.Password = password;
		this.NIC = NIC;
		this.Address = address ;
		this.CardNo = cardNo;
		this.CardName = cardName;
		this.CVV = CVV ;
		this.ExpireDate = expireDate;
		this.Amount = amount;
		
    }
 
    //generate getters
            public int getId() {
	           return id;
             }

            public String getCustomerName() {
	           return CustomerName;
             }        

            public String getPhoneNumber() {
	            return PhoneNumber;
             }
            
            public String getEmail() {
            	return Email;
             }

            public String getPassword() {
	            return Password;
             }

             public String getNIC() {
	             return NIC;
            }
             
             public String getAddress() {
	             return Address;
            }
             
             public String getCardNo() {
	             return CardNo;
            }
             
             public String getCardName() {
	             return CardName;
            } 
             
             
             public String getCVV() {
	             return CVV;
            }   

             public String getExpireDate() {
	             return ExpireDate;
            } 

            public String getAmount() {
	             return Amount;
            }  
             
}


