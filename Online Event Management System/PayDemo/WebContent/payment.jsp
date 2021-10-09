<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700;800;900&display=swap'); 

body {
    margin: 0;
    padding: 0;
    background: url(https://kisson.co.in/images/event-1.jpg) no-repeat;
    height: 100vh;
    font-family: Comic Sans MS;
    background-size: cover;
    background-repeat: no-repeat;
    background-position: center;
    overflow: hidden
}

@media screen and (max-width: 600px){

    body {
        background-size: cover;
        : fixed
    }
}

#particles-js {
    height: 100%
}

.loginBox {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 350px;
    min-height: 200px;
    background:#E3E4FA;
    border-radius: 10px;
    padding: 40px;
    box-sizing: border-box
}

.user {
    margin: 0 auto;
    display: block;
    margin-bottom: 20px;
    
}

h2 {
    margin: 0;
    padding: 0 0 20px;
    color: #151B54;
    text-align: center
}

.loginBox input {
    width: 100%;
    margin-bottom: 20px
}

.loginBox input[type="text"],
.loginBox input[type="password"] {
  
    border: none;
    border-bottom: 2px solid #262626;
    outline: none;
    height: 40px;
    color: #000080;
    background: transparent;
    font-size: 16px;
    padding-left: 20px;
    box-sizing: border-box
}

.loginBox input[type="text"]:hover,
.loginBox input[type="password"]:hover {
   
    color: #151B8D;
    border: 1px solid #000080;
    box-shadow: 0 0 5px rgba(0, 255, 0, .3), 0 0 10px rgba(0, 255, 0, .2), 0 0 15px rgba(0, 255, 0, .1), 0 2px 0 black
}

.loginBox input[type="text"]:focus,
.loginBox input[type="password"]:focus {
    
    border-bottom: 2px solid #000080;
}

.inputBox {
    position: relative
}

.inputBox span {
    position: absolute;
    top: 10px;
    color: #262626
}

.loginBox input[type="submit"] {
    border: none;
    outline: none;
    height: 40px;
    font-size: 16px;
    background: #59238F;
    color:white;
    border-radius: 20px;
    cursor: pointer
}

.loginBox a {
    color: #262626;
    font-size: 14px;
    font-weight: bold;
    text-decoration: none;
    text-align: center;
    display: block
}

a:hover {
    color: #00ffff
}

p {
    color: #0000ff
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
    
.logo {
     width: 80px;
     margin: auto
 }

 .logo img {
     width: 100%;
     height: 80px;
     object-fit: cover;
     border-radius: 50%;
     box-shadow: 0px 0px 3px #000080, 0px 0px 0px 5px #98AFC7, 8px 8px 15px #a7aaa7, -8px -8px 15px #98AFC7
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
<br>

<!--Back to Home page-->

<div align = "left">
      <div class ="btn2">
 <a href = "home.jsp">
        <button type="button" name="back" >Back to home</button>
           </a> </div></div>

<!--Login Data-->
	
<div class="loginBox">	  
<div class="logo"> <img src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png" alt=""> </div>
  <br> <h2>Sign In</h2>

   

	  <form action="login" method="post">
	 <br>
        <div class="inputBox"><input  type="text" name="email" placeholder="Email"> 
        <input type="password" name="password" placeholder="Password"> </div>
         
         <br>
        <input type="submit" name="" value="Login">   </form>  
      
   
  </div>	
</body>
</html>