<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert</title>
<style>

body {
    margin: 0;
    color: Yellow;
    background: url(https://images.alphacoders.com/991/991653.jpg) no-repeat center;
    background-size: cover;
    font: 600 16px/18px 'Open Sans', sans-serif
}

.login-box {
    width: 100%;
    margin: auto;
    max-width: 625PX;
    min-height:1050px;
    position: relative;
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19)
}

.login-snip {
    width: 100%;
    height: 100%;
    position: absolute;
    padding: 90px 70px 50px 70px;
    background: rgba(0, 77, 77, .9)
}

.login-snip .sign-up-form {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: absolute;
    transform: rotateY(180deg);
    backface-visibility: hidden;
    transition: all .4s linear
}


.login-snip .sign-up,
.login-space .group .check {
    display: none
}

.login-snip .tab,
.login-space .group .label,
.login-space .group .button {
    text-transform: uppercase
}

.login-snip .tab {
    font-size: 22px;
    margin-right: 15px;
    padding-bottom: 5px;
    margin: 0 15px 10px 0;
    display: inline-block;
    border-bottom: 2px solid transparent
}



.login-space {
    min-height: 345px;
    position: relative;
    perspective: 1000px;
    transform-style: preserve-3d
}

.login-space .group {
    margin-bottom: 15px
}

.login-space .group .label,
.login-space .group .input,
.login-space .group .button {
    width: 100%;
    color: white;
    display: block
}

.login-space .group .input,
.login-space .group .button {
    border: none;
    padding: 15px 20px;
    border-radius: 25px;
    background: rgba(255, 255, 255, .1)
}

.login-space .group input[data-type="password"] {
    text-security: circle;
    -webkit-text-security: circle
}

.login-space .group .label {
    color: white;
    font-size: 12px
}

.login-space .group .button {
    background: #1161ee
}

.login-space .group label .icon {
    width: 15px;
    height: 15px;
    border-radius: 2px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, .1)
}

.login-space .group label .icon:before,
.login-space .group label .icon:after {
    content: '';
    width: 10px;
    height: 2px;
    background: #fff;
    position: absolute;
    transition: all .2s ease-in-out 0s
}

.login-space .group label .icon:before {
    left: 3px;
    width: 5px;
    bottom: 6px;
    transform: scale(0) rotate(0)
}

.login-space .group label .icon:after {
    top: 6px;
    right: 0;
    transform: scale(0) rotate(0)
}

*,
:after,
:before {
    box-sizing: border-box
}

.clearfix:after,
.clearfix:before {
    content: '';
    display: table
}

.clearfix:after {
    clear: both;
    display: block
}

a {
    color: inherit;
    text-decoration: none
}

.foot {
    text-align: center
}

.card {
    width: 500px;
    left: 100px
}

::placeholder {
  
    color: #b3b3b3
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

<!--Back to Home page-->

<div align = "left">
      <div class ="btn2">
	<a href = "payment.jsp">
        <button type="button" name="back" >Back</button>
           </a> </div></div>


<!--Insert Data-->

 <form action="insert" method="post">                       
<div align = "center">
<div class="row">
    <div class="col-md-6 mx-auto p-0">
        <div class="card">
            <div class="login-box">
                <div class="login-snip"> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"><u>Make New Payment</u></label><br>
                    <div class="login-space">                     
                      
                    <div class="group"> <label for="user" class="label">Customer Name</label><input name="customerName" type="text" placeholder= "Name" class="input" > </div>
                    <div class="group"> <label for="pass" class="label">Phone Number</label><input name="phoneNumber" type="text" placeholder= "Phone Number"  class="input"> </div>
                    <div class="group"> <label for="pass" class="label">Email </label><input name="email" type="text" placeholder= "Email"  class="input" > </div>
                    <div class="group"> <label for="pass" class="label">Password</label><input name= "password" type="text"  placeholder= "Password" class="input"> </div>            
                    <div class="group"> <label for="user" class="label">NIC</label><input name= "NIC" type="text" placeholder= "NIC" class="input" > </div>
                    <div class="group"> <label for="pass" class="label">Address</label><input name= "address"  type="text" placeholder= "Address" class="input"> </div>
                    <div class="group"> <label for="pass" class="label">CardNo</label><input name= "cardNo"  type="text" placeholder= "0000 0000 0000 0000" class="input"> </div>
                    <div class="group"> <label for="pass" class="label">CardName</label><input name= "cardName" type="text"  placeholder= "CardName" class="input" > </div>
                    <div class="group"> <label for="pass" class="label">CVV</label><input name= "CVV" type="text"  placeholder= "CVV" class="input"> </div>
                    <div class="group"> <label for="pass" class="label">ExpireDate</label><input name= "expireDate" type="text"  placeholder= "MM/YY" class="input" > </div>                
                    <div class="group"> <label for="pass" class="label">Amount</label><input name= "amount" type="text"  placeholder= "00.00" class="input" > </div> 
                                        
                    <div class="group"> <input type="submit" class="button" value="Create New Payment"> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</body>
</html>