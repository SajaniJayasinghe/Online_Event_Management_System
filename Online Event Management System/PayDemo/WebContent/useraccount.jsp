<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Profile</title>
<style type="text/css">

                  body {
                        font-family: comic snans ms;
                        font-size: 20px;
                        background:url(https://freevector-images.s3.amazonaws.com/uploads/vector/preview/36965/36965.png)no-repeat;  
                        background-size:cover; 
                     }
                     
                 input[type=text] {
                        width: 30%;
                        margin-bottom: 20px;
                        padding: 12px;
                        border: 1px solid #ccc;
                        border-radius: 5px;
                    }

        .button {
                       background-color:#000080;
                       color: white;
                       padding: 12px;
                       margin: 10px 0;
                       border: none;
                       width: 10%;
                       border-radius: 3px;
                       cursor: pointer;
                       font-size: 17px;
                    }


                .btn {
                       transform: translate(-15%, -15%);
                       background-color:#000080;
                       color: white;
                       padding: 12px;
                       margin: 10px 0;
                       border: none;
                       width: 15%;
                       border-radius: 3px;
                       cursor: pointer;
                       font-size: 17px;
                       border-radius: 10px;
                    }
               .button:hover {
                       background-color: purple;
                        background: linear-gradient(to right,#307D7E,#342D7E,#CCFFFF);
                    }
               img {
                       border-radius: 50%;
                   }
                   
 .btn1{
    align-items: center;
    padding-left: 44%;
    margin-bottom: auto;
}
.btn1 button{
    width: 180px;
    color: white;
    font-size: 15px;
    padding: 12px 0;
    background:linear-gradient(to right, #000080,purple);
    border: 2px;
    border-radius: 20px;
    outline: none;
    

}
.btn1 button:hover {
    transition: transform;
    background: linear-gradient(to right, #FFA62F,#F3E5AB);
    color:BLACK;
}  
 .btn2{
    align-items: center;
    margin-bottom: auto;
}


.btn2 button{
    width: 180px;
    color: white;
    font-size: 15px;
    padding: 12px 0;
    background:linear-gradient(to right, #000080,purple);
    border: 2px;
    border-radius: 20px;
    outline: none;
    

}
.btn2 button:hover {
    transition: transform;
    background: linear-gradient(to right, #FFA62F,#F3E5AB);
    color:BLACK;
}  
                 
                                   
</style>
</head>
<body>

<!--Insert Data Button-->

   <div align = "right">
      <div class ="btn1">
           <a href = "insert.jsp">
		      
		         <button type="button" name="insert" >Make a new payment</button>
           </a> </div></div>

<!--Validate Details-->

<div align = "center">
    <h1><u>Customer Profile</u></h1>
    <table>
    
    <c:forEach var="stf" items="${paymentDetails}">	
	
	<c:set var="id" value="${stf.id}"/>
	<c:set var="CustomerName" value="${stf.customerName}"/>
	<c:set var="PhoneNumber" value="${stf.phoneNumber}"/>
	<c:set var="Email" value="${stf.email}"/>
	<c:set var="password" value="${stf.password}"/>
	<c:set var="NIC" value="${stf.NIC}"/>
    <c:set var="Address" value="${stf.address}"/>
    <c:set var="CardNo" value="${stf.cardNo}"/>
    <c:set var="CardName" value="${stf.cardName}"/>
    <c:set var="CVV" value="${stf.CVV}"/>
	<c:set var="ExpireDate" value="${stf.expireDate}"/>
    <c:set var="Amount" value="${stf.amount}"/>
 
	<tr>
		<td> ID   &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.id}</td>
	</tr>
	 <tr>
	    <td> Name &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.customerName}</td>
	 </tr>
	 <tr>
	    <td> Phone Number  &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.phoneNumber}</td>
	 </tr>	
	 <tr>
		<td> Email   &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.email}</td>
	 </tr>	
    <tr>
		<td> Password   &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.password}</td>
	</tr>
    <tr>
		<td> NIC       &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.NIC}</td>
	</tr>

    <tr>
		<td> Address   &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.address}</td>
	</tr>

    <tr>
		<td> CardNo    &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.cardNo}</td>
	</tr>

     <tr>
		<td> CardName   &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.cardName}</td>
	</tr>
	
	  <tr>
		<td> CVV &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.CVV}</td>
	</tr>
	<tr>
		<td> ExpireDate &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.expireDate}</td>
	</tr>
	
	<tr>
		<td> Amount &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.amount}</td>
	</tr>
	
	
	
</c:forEach>
</table>

<!--Update Data-->
           <c:url value="update.jsp" var="updatepayment">
           
           <c:param name="id" value="${id}"/>
		   <c:param name="CustomerName" value="${CustomerName}"/>
		   <c:param name="PhoneNumber" value="${PhoneNumber}"/>
		   <c:param name="Email" value="${Email}"/>
		   <c:param name="password" value="${password}"/>
		   <c:param name="NIC" value="${NIC}"/>
           <c:param name="Address" value="${Address}"/>
           <c:param name="CardNo" value="${CardNo}"/>
           <c:param name="CardName" value="${CardName}"/>
           <c:param name="CVV" value="${CVV}"/>
           <c:param name="ExpireDate" value="${ExpireDate}"/>
           <c:param name="Amount" value="${Amount}"/>
           
           </c:url>  <br><br>
        
     <a href="${updatepayment}">
     
      
      <div class ="btn2">
 
		         <button type="button" name="update" >Update My Data</button>
           </a> </div>
     <br>
     
<!--Delete Data-->
     
           <c:url value="deletePayment.jsp" var="paymentdelete">
     
           <c:param name="id" value="${id}"/>
		   <c:param name="CustomerName" value="${CustomerName}"/>
		   <c:param name="PhoneNumber" value="${PhoneNumber}"/>
		   <c:param name="Email" value="${Email}"/>
		   <c:param name="password" value="${password}"/>
		   <c:param name="NIC" value="${NIC}"/>
           <c:param name="Address" value="${Address}"/>
           <c:param name="CardNo" value="${CardNo}"/>
           <c:param name="CardName" value="${CardName}"/>
           <c:param name="CVV" value="${CVV}"/>
           <c:param name="ExpireDate" value="${ExpireDate}"/>
           <c:param name="Amount" value="${Amount}"/>           
           
           </c:url>
      
    <a href="${paymentdelete}">
   
 
      <div class ="btn2">
 
      <button type="button" name="delete" >Delete My Data</button>
           </a> 
  
<!--Back to Login page-->
	<a href = "home.jsp">
	
 
      <button type="button" name="submit" >Log Out</button>
           </a> </div>

</div>
</body>
</html>