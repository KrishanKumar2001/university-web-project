<%@page import="com.jsp.academic_app.dto.Student"%>
<%@page import="com.jsp.academic_app.dao.StudentDao"%>
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
position: absolute;
bottom:40px ;
}

#sub:hover{
background-color:gray;
}

body{
background-color:#F2F2F2;
position: relative;
}

.signup{
height: 680px;
width: 450px;

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



</head>
<body>


       <%
			
            int id=Integer.parseInt(request.getParameter("id"));
			StudentDao studentDao=new StudentDao();
		    Student student=studentDao.getStudentByIdDao(id);	
		%>

   
  

   
   <form action="updateStudentData" method="post" class="signup">
   
   
   
  
   
   <h1>Update Student Details</h1>
   <div class="flexInput">
   
   <label for="Id">Student Id</label>
   <input type="text" name="id" id="Id" readonly value="<%=student.getStudetId()%>" >
   
   
   
   <label for="Name">Update Student Name</label>
  
   <input type="text" name="name" id="Name" required value="<%=student.getStudentName()%>" >
   
   <label for="Email">Update Student Email</label>
   
   <input type="email" name="email" id="Email" value="<%=student.getStudentEmail()%>" >
   
   <label for="Password">Update Password for Student</label>
  
   <input type="text" name="password" id="Password" value="<%=student.getStudentPassword()%>" >
  
  <label for="Department">Update Student Department</label>
  
   <input type="text" name="department" id="Department" value="<%=student.getStudentDepartment()%>" >
   
   <label for="Batch">Update Student Batch</label>
  
   <input type="text" name="batch" id="Batch" value="<%=student.getBatch()%>" >
   
   <label for="Address">Update Student Address</label>
  
   <input type="text" name="address" id="Address" value="<%=student.getStudentAddress()%>" >
   
   
   
   
   </div>
   
   <input type="submit" name="submit" value="update"  id="sub">
   
   </form> 
  
   


</body>
</html>