<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Staff Member Profile</title>
<style type="text/css">

                  body {
                        font-family:comic sans ms;
                        font-size: 20px;
                        background:url(https://balijungletrekking.files.wordpress.com/2016/04/bali-trekking-organizer-who-organize-trekking-tours-jungle-adventure-hiking-mountain-treks-in-bali.jpg)no-repeat;  
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
                        background: linear-gradient(to right,#151B54,#2B547E,#BCC6CC);
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

<!--Create New Member Data-->

      <div align = "right">
      <div class ="btn1">
           <a href = "insert.jsp">
		      
		         <button type="button" name="insert" >Create New Account</button>
           </a> </div></div>


<!--Validate Details-->

      <div align = "center">

          <h1><u>Staff Member Profile</u></h1>
            <table>
    
    <c:forEach var="stf" items="${staffDetails}">	
	
	<c:set var="id" value="${stf.id}"/>
	<c:set var="StaffMemberName" value="${stf.staffMemberName}"/>
	<c:set var="PhoneNumber" value="${stf.phoneNumber}"/>
	<c:set var="Email" value="${stf.email}"/>
	<c:set var="username" value="${stf.userName}"/>
	<c:set var="password" value="${stf.password}"/>
	<c:set var="NIC" value="${stf.NIC}"/>


	<tr>
		<td>Staff Member ID &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.id}</td>
	</tr>
	 <tr>
	    <td>Staff Member Name &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.staffMemberName}</td>
	 </tr>
	 <tr>
	    <td>Staff Member Phone Number &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.phoneNumber}</td>
	 </tr>	
	 <tr>
		<td>Staff Member Email&nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.email}</td>
	 </tr>	
	<tr>
		<td>Staff Member UserName &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.userName}</td>
	</tr>
    <tr>
		<td>Staff Member Password &nbsp;&nbsp;&nbsp;&nbsp;</td>
		<td>${stf.password}</td>
	</tr>
    <tr>
		<td>Staff Member NIC &nbsp;&nbsp;&nbsp;&nbsp;</td>  
		<td>${stf.NIC}</td>
	</tr>

</c:forEach>
</table>


<!--Update Data-->

           <c:url value="updatestaff.jsp" var="staffupdate">
           
           <c:param name="id" value="${id}"/>
		   <c:param name="StaffMemberName" value="${StaffMemberName}"/>
		   <c:param name="PhoneNumber" value="${PhoneNumber}"/>
		   <c:param name="Email" value="${Email}"/>
		   <c:param name="username" value="${username}"/>
		   <c:param name="password" value="${password}"/>
		   <c:param name="NIC" value="${NIC}"/>
           
           </c:url>
           <br><br>
           
     <a href="${staffupdate}">  
          <div class ="btn2">
         <button type="button" name="update" >Update My Data</button>
            </a> </div>
        <br>   
<!--Delete Data-->
           <c:url value="deletestaff.jsp" var="staffdelete">
     
           <c:param name="id" value="${id}"/>
		   <c:param name="StaffMemberName" value="${StaffMemberName}"/>
		   <c:param name="PhoneNumber" value="${PhoneNumber}"/>
		   <c:param name="Email" value="${Email}"/>
		   <c:param name="username" value="${username}"/>
		   <c:param name="password" value="${password}"/>
		   <c:param name="NIC" value="${NIC}"/>
    
           </c:url>

   
     
    <a href="${staffdelete}">  
      <div class ="btn2">
      <button type="button" name="delete" >Delete My Data</button>
    </a> 
  
<!--Back to login page-->

	<a href = "../PayDemo/home.jsp">
    <button type="button" name="submit" >Log Out</button>
    </a> </div>


</div>
</body>
</html>