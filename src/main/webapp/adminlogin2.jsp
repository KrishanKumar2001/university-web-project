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
height: 35px;
width:260px;
color:white;
background-color: #34495E ;
font-weight: bold;

}

#sub a:hover{
background-color: blue;
}

body{
background-color:#F2F2F2;
position: relative;
}

.signup{
height: 580px;
width: 450px;

background-color: white;
position: absolute;
left: 550px;
top:50px;    
box-shadow: 2px 2px 10px 5px silver;

display: flex;
flex-direction: column;
flex-wrap: nowrap;
justify-content:center;
align-items:center;
gap:20px;





}

.flexInput{
display: flex;
flex-direction: column;
flex-wrap: nowrap;
justify-content:flex-start;
align-items:flex-start;
gap:10px;
postion:relative;


}
#eye{
position: absolute;
top:225px;
right:110px;
}

div input{
height:28px;
width:250px;

}



a{
text-decoration: none;
}

.cap{
height:150px;
width:100%;

display:flex;
flex-direction:column;
flex-wrap:wrap;
justify-content: flex-start;
margin-top:10px;
gap:20px; 
position:relative;

}



#maincaptcha{
display: inline-block;
width: 82%;
}

#refresh{
width:40px;
height:28px;
border:none;
display: inline-block;
position: absolute;
top:0px;
right:0px;

}

#btn2{
border: none;
}

#hide{
display: none;
}



</style>

<script src="https://kit.fontawesome.com/49d336bab5.js" crossorigin="anonymous"></script>


<script type="text/javascript">

function generateCaptcha()
{
	var cap= new Array('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z','0','1','2','3','4','5','6','7','8','9');
    var i;
    for(i=0;i<1;i++)
    {
    	var a=cap[Math.floor(Math.random()*cap.length)];
    	var b=cap[Math.floor(Math.random()*cap.length)];
    	var c=cap[Math.floor(Math.random()*cap.length)];
    	var d=cap[Math.floor(Math.random()*cap.length)];
    	var e=cap[Math.floor(Math.random()*cap.length)];
    }
    
    var code=a+b+c+d+e;
    document.getElementById("maincaptcha").value=code;
}


function showPassword()
{
	var x=document.getElementById("Password");
	
	if(x.type==="password")
	{
		x.type="text";
		document.getElementById("show").style.display="none";
		 document.getElementById("hide").style.display="block";
	}else
	{
		x.type="password";
		document.getElementById("show").style.display="block";
		 document.getElementById("hide").style.display="none";
	}
	
	
}



</script>


</head>
<body onload="generateCaptcha();">

<form action="adminLogin" class="signup">
   <h1>Login</h1>
   <div class="flexInput">
   
   
   <label for="Email">Enter Email</label>
   
   <input type="email" name="loginemail" id="Email" required>
   
   <label for="Password">Enter Password</label>
  
   <input type="password" name="loginpassword" id="Password" required>
      <span id="eye"  onclick="showPassword();" >
          <i class="fa-solid fa-eye-slash" id="hide" ></i>
          <i class="fa-solid fa-eye" id="show" ></i>
      </span>
   
   
  <div class="cap">
    <input type="text" id="maincaptcha" readonly style="color:green;" >
    <button id="refresh" onclick="generateCaptcha();" ><i class="fa-solid fa-arrows-rotate"></i></button>
    
    <input type="text" placeholder="Enter capcha"  id="textinput" required>
    
  </div>
  
   
   </div>
   
          <input type="submit" name="submit" id="sub"> 
   
   <div>Don't have an account? <a href="adminsignup.jsp" >Sign Up</a></div>
   </form> 


</body>
</html>