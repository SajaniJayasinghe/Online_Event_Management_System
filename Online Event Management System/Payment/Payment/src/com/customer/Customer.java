package com.customer;

public class Customer {
	
	//define the field

		private int id;
		private String name;
		private String NIC;
		private String email;
		private String branch;
		private String accountnumber;
		private String city;
		private String amount;
		private String cardNo;
		private String cardName;
		private String expireDate;
		private String cvv;
		
		
		//set the attribute
		public Customer(int id, String name, String NIC, String email, String branch, String accountnumber,
				String city, String amount, String cardNo, String cardName, String expireDate, String cvv) {
			
			this.id = id;
			this.name = name;
			this.NIC = NIC;
			this.email = email;
			this.branch = branch;
			this.accountnumber = accountnumber;
			this.city = city;
			this.amount = amount;
			this.cardNo = cardNo;
			this.cardName = cardName;
			this.expireDate = expireDate;
			this.cvv = cvv;
		}


		//generate getters
		public int getId() {
			return id;
		}



		public String getName() {
			return name;
		}



		public String getNIC() {
			return NIC;
		}



		public String getEmail() {
			return email;
		}



		public String getBranch() {
			return branch;
		}



		public String getAccountnumber() {
			return accountnumber;
		}


		public String getCity() {
			return city;
		}

		
		
		public String getAmount() {
			return amount;
		}


		public String getCardNo() {
			return cardNo;
		}



		public String getCardName() {
			return cardName;
		}



		public String getExpireDate() {
			return expireDate;
		}



		public String getCvv() {
			return cvv;
		}
					
		
}
