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
height:30px;
width:230px;
color:white;
background-color: #34495E ;
font-weight: bold;
}

#sub:hover{
background-color:gray;
}

body{
background-color:#F2F2F2;
position: relative;
}

.signup{
height: 620px;
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
gap:20px;
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

#added{
position: absolute;
top:15px;

}

#back{
height:20px;
width: 70px;
color:white;
background-color:#34495E; 
position: absolute;
bottom: 10px;
font-size:small;
font-weight:bold;
left:150px;
text-align:center;
padding-top:2px;
display:none;
}

</style>

<script type="text/javascript">


function addStudent(){
let x=document.getElementById("added").value;
var btn=document.getElementById("added");
let submit=document.getElementById("sub").value;
	if(x!=="")
	{
		alert("Student Registered Succesfully!");
		btn.style.display = "block";
		
	}
	
}


</script>


</head>
<body>

   <%String studentAdded=(String)request.getAttribute("studentRegisterd");%>
  

   
   <form action="submitStudent" class="signup">
   
   <%if(studentAdded!=null){%>
    <h6 style="color: green " id="added" ><%=studentAdded%></h6>
    <a href="adminprofile.jsp" id="back" style="display: block;">Back</a>
     <%}%>
   
   
   <h1>Register Student</h1>
   <div class="flexInput">
   <label for="Name">Enter Student Name</label>
  
   <input type="text" name="name" id="Name" >
   
   <label for="Email">Enter Student Email</label>
   
   <input type="email" name="email" id="Email">
   
   <label for="Password">Set Password for Student</label>
  
   <input type="password" name="password" id="Password">
  
  <label for="Department">Enter Student Department</label>
  
   <input type="text" name="department" id="Department">
   
   <label for="Batch">Enter Student Batch</label>
  
   <input type="text" name="batch" id="Batch">
   
   <label for="Address">Enter Student Address</label>
  
   <input type="text" name="address" id="Address">
   
   
   
   
   </div>
   <input type="submit" name="submit"  id="sub">
   
   </form> 
  
   


</body>
</html>