<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: Comic Sans MS;
 }

 body {
     background:url(https://www.haringphotography.com/wp-content/uploads/2017/12/breakers-palm-beach-indian-wedding-photos-1.jpg;)no-repeat;    
     background-size:cover; 
 }

 .wrapper {
     max-width: 450px;
     min-height: 500px;
     margin: 80px auto;
     padding: 40px 30px 30px 30px;
     background:#B7CEEC;
     border-radius: 15px;
     box-shadow: 13px 13px 20px #cbced1, -13px -13px 20px black
 }

 .logo {
     width: 80px;
     margin: auto
 }

 .logo img {
     width: 100%;
     height: 80px;
     object-fit: cover;
     border-radius: 50%;
     box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px #a7aaa7, -8px -8px 15px #fff
 }

 .wrapper .name {
     font-weight: 600;
     font-size: 1.4rem;
     letter-spacing: 1.3px;
     padding-left: 10px;
     color: black;
 }

 .wrapper .form-field input {
     width: 100%;
     display: block;
     border: none;
     outline: none;
     background: none;
     font-size: 1.2rem;
     color: black;
     padding: 10px 15px 10px 10px
     
 }

 .wrapper .form-field {
     padding-left: 10px;
     margin-bottom: 20px;
     border-radius: 20px;
     box-shadow: inset 8px 8px 8px #737CA1, inset -8px -8px 8px #EBF4FA;
 }

 .wrapper .form-field .fas {
     color: black;
 }

 .wrapper .btn {
     box-shadow: none;
     width: 80%;
     height: 40px;
     background-color: #03A9F4;
     color: #fff;
     border-radius: 25px;
     box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
     letter-spacing: 1.3px
 }

 .wrapper .btn:hover {
     background-color: #039BE5
 }

 .wrapper a {
     text-decoration: none;
     font-size: 0.8rem;
     color:black;
 }

 .wrapper a:hover {
     color: #039BE5
 }

 @media(max-width: 380px) {
     .wrapper {
         margin: 30px 20px;
         padding: 40px 15px 15px 15px
     }
 }

</style>
</head>
<body>
 
 <div class="wrapper">
     <%  
        String id = request.getParameter("id");
        String StaffMemberName = request.getParameter("StaffMemberName");
	    String PhoneNumber  = request.getParameter("PhoneNumber");
	    String Email = request.getParameter("Email");
	    String UserName = request.getParameter("username");
		String Password = request.getParameter("password");
		String NIC = request.getParameter("NIC");
        
		%>
		


     <form action="delete" method="post">
   
   
       <div class="logo"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHO412gwYLVg-bNeXC2zqCoyKLyy02oGtGwKw_KzLiQCFZvP2QgR8gJ-jfuPsJdpdV62k&usqp=CAU" alt=""> </div><br>
       <div align = "center"><div class="text-center mt-4 name">Delete Profile</div></div>  <br>
      
      
       <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                           <input type="text" name="id"  placeholder= "ID" value ="<%= id%>" readonly></div>
                           
       <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                      
                           <input type="text" name="staffMemberName" placeholder= "Enter name here" value ="<%= StaffMemberName%>" readonly></div>
                            
       <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                           <input type="text" name="phoneNumber"  placeholder= "phonenumber" value ="<%= PhoneNumber%>"  readonly ></div>           
                            
                
       <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                            <input type="text" name="email" placeholder= "Enter email here"   value ="<%= Email%>"   readonly></div>            
                                        
      <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                           <input type="text" name="username" placeholder= "Enter username here" value ="<%= UserName%>"  readonly ></div>                        
                        
       <div class="form-field d-flex align-items-center"> <span class="fas fa-key"></span>
                           <input type="password" name= "password"  placeholder= "Enter password here" value ="<%= Password%>"  readonly ></div>
      
      <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                           <input type="text" name= "NIC"  placeholder= "Enter NIC here"  value ="<%= NIC%>" readonly ></div> 
      
  
       <div align = "center"><button class="btn mt-3">Delete Account</button></div>  
   
  
</form>
</div>
</body>
</html>