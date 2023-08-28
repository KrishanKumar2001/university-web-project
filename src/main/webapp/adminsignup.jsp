<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">

*{
box-sizing: border-box;
padding: 0;
margin: 0;
}

h1{
font-weight:bold;
color: #34495E ;

}

#sub{
height:35px;
width:260px;
color:white;
background-color: #34495E ;
font-weight: bold;
}

body{
background-color:#F2F2F2;
position: relative;
}

.signup{
height: 600px;
width: 400px;

background-color: white;
position: absolute;
left: 550px;
top:50px;    
box-shadow: 2px 2px 10px 5px silver;

display: flex;
flex-direction: column;
flex-wrap: nowrap;
justify-content:flex-start;
align-items:center;
gap:70px;
padding: 50px;




}

.flexInput{
display: flex;
flex-direction: column;
flex-wrap: nowrap;
justify-content:flex-start;
gap:10px;


}

div input{
height:28px;
width:230px;
}
a{
text-decoration: none;
}

</style>


</head>
<body>


   
   <form action="adminSignup" class="signup">
   <h1>Sign Up</h1>
   <div class="flexInput">
   <label for="Name">Enter Name</label>
  
   <input type="text" name="name" id="Name" >
   
   <label for="Email">Enter Email</label>
   
   <input type="email" name="email" id="Email">
   
   <label for="Password">Enter Password</label>
  
   <input type="password" name="password" id="Password">
  
   
   </div>
   <input type="submit" name="submit" id="sub">
   <div>Already have an account? <a href="adminlogin.jsp">Login</a></div>
   </form> 
  
   


</body>
</html>