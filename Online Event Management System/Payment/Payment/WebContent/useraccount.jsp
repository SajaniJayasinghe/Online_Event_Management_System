<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
 <style >
 body {
  font-family:comic sans ms;
  font-size: 20px;
  background:url(https://wallpaperaccess.com/full/4597140.jpg)no-repeat;
  background-size:cover;  
}
input[type=text] {
  width: 30%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 5px;
  
}

.btn {

  background-color:#6D7B8D;
  color: white;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 15%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}
.btn:hover {
  background-color: #666666;
}
 img {
  border-radius: 50%;
}
 
 </style>
<body>



		<div class = "container" align = "center">
	
		
		<div class = "content">
		
		<font color = "black">
		<br>
		<a href = "paymentInsert.jsp">
		<input type="button" name="insert" value="Make a New Payment" class = "btn">
		</a>
		
<table>	
	

		<c:forEach var="cus" items="${cusDetails}">
		
		<c:set var="id" value="${cus.id}"/>
		<c:set var="cardNo" value="${cus.cardNo}"/>
		<c:set var="cardName" value="${cus.cardName}"/>
		<c:set var="expireDate" value="${cus.expireDate}"/>
		<c:set var="cvv" value="${cus.cvv}"/>
		<c:set var="name" value="${cus.name}"/>
		<c:set var="email" value="${cus.email}"/>

	
		<h1>Your Payment Details</h1>
		<hr>
		<tr>
		
		<td>Customer ID &nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td>${cus.id}  </td>
		</tr>	
		<tr>
		
		<td>User Name &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.name}</td>
		</tr>
		
		<tr>
		<td>Customer NIC&nbsp;&nbsp;&nbsp;&nbsp; </td>	
		<td>${cus.NIC}</td>
		</tr>
		
		<tr>
		<td>Email &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.email}
		</tr>
		
		<tr>
		<td>Branch &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.branch}
		</tr>
		<tr>
		<td>Account Number &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.accountnumber}
		</tr>
		<tr>
		<td>City &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.city}
		</tr>
		<tr>
		<td>Amount &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.amount}
		</tr>
		<tr>
		<td>Card Number &nbsp;&nbsp;&nbsp;&nbsp; </td>
		<td>${cus.cardNo}</td>
		</tr>
		<tr>
		<td>Card Name &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.cardName}</td>
		</tr>
		<tr>
		<td>Expire Date &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.expireDate}</td>
		</tr>
		<tr>
		<td>CVV &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${cus.cvv}</td>
		</tr>
		
		</c:forEach>
</table>

</font>
		
		<c:url value = "UpdatePayment.jsp" var = "payUpdate"> 
		
		<c:param name="id" value = "${id}"></c:param>
		<c:param name="cardNo" value = "${cardNo}"></c:param>
		<c:param name="cardName" value = "${cardName}"></c:param>
		<c:param name="expireDate" value = "${expireDate}"></c:param>
		<c:param name="cvv" value = "${cvv}"></c:param>
		</c:url>
		<a href="${payUpdate}">
		<br>
		<input type="button" name="update" value="Update Card Details" class = "btn">
		</a> <br>
			
			<c:url value = "deletePayment.jsp" var = "paymentDelete"> 
			
			<c:param name="id" value = "${id}"></c:param>
			<c:param name="name" value = "${name}"></c:param>
			<c:param name="email" value = "${email}"></c:param>
		
			</c:url>
			<a href="${paymentDelete}">
		
			<input type="button" name="delete" value="Delete Payment Details" class = "btn">
			</a> 
			
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <a href = "payment.jsp">
            <input type="submit" name="submit" value="Log Out" class="btn" >
</a>
		</div>
		
	</div>
		
</body>
</html>