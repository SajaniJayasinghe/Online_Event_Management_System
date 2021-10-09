<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

    
<style type="text/css">

 @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap');

 * {
     margin: 0;
     padding: 0;
     box-sizing: border-box;
     font-family: Comic Sans MS;
 }

 body {
     background:url(http://unicore.pk/wp-content/uploads/2020/09/Event-Man.jpg)no-repeat;   
     background-size:cover; 
 }

 .wrapper {
     max-width: 350px;
     min-height: 500px;
     margin: 80px auto;
     padding: 40px 30px 30px 30px;
     background:#FCDFFF;
     border-radius: 15px;
     box-shadow: 15px 15px 20px #cbced1, -15px -15px 20px black
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
     box-shadow: 0px 0px 3px #5f5f5f, 0px 0px 0px 5px #ecf0f3, 8px 8px 15px #a7aaa7, -8px -8px 15px #483C32
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
     box-shadow: inset 8px 8px 8px #cbced1, inset -8px -8px 8px #fff
 }

 .wrapper .form-field .fas {
     color: #555
 }

 .wrapper .btn {
     box-shadow: none;
     width: 80%;
     height: 40px;
     background-color:#F660AB;
     color:black;
     border-radius: 25px;
     box-shadow: 3px 3px 3px #b1b1b1, -3px -3px 3px #fff;
     letter-spacing: 1.3px
 }

 .wrapper .btn:hover {
     background-color:#B048B5

 }

 .wrapper a {
     text-decoration: none;
     font-size:1.4rem;
     color:#FDD7E4
 }

 .wrapper a:hover {
     color: #7D1B7E	
 }

 @media(max-width: 380px) {
     .wrapper {
         margin: 30px 20px;
         padding: 40px 15px 15px 15px
     }
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
               img {
                       border-radius: 50%;
                   }
</style>
</head> 
<body>

<!--Back to Home page-->

<div align = "left">
      <div class ="btn2">
  <a href = "../PayDemo/home.jsp">
        <button type="button" name="back" >Back to home</button>
           </a> </div></div>

<!--Login Data-->

 <div class="wrapper">
        <form action= "login"  method = "post"> 
     
       <div class="logo"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHO412gwYLVg-bNeXC2zqCoyKLyy02oGtGwKw_KzLiQCFZvP2QgR8gJ-jfuPsJdpdV62k&usqp=CAU" alt=""> </div><br>
       <div align = "center"><div class="text-center mt-4 name">Staff Login </div></div>  <br><br>
      
      
       <div class="form-field d-flex align-items-center"> <span class="far fa-user"></span>                              
                            <input type="text" name = "username" placeholder="Username"></div>
       
       <div class="form-field d-flex align-items-center"> <span class="fas fa-key"></span>
                            <input type="password" name = "password" placeholder="Password"></div>
      
  <br>
       <div align = "center"><button class="btn mt-3">Sign In</button></div>  
</form>    
<br>
    <div align = "center">  
      <a href = "insert.jsp">
     <button class="btn mt-3">Sign Up</button>      
       </a>    </div>
</div>
</body>
</html>
