<%@page import="com.jsp.academic_app.dto.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.academic_app.service.StudentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Student</title>

<style type="text/css">

*{
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body{
  
  background-color: #FFCCCB;
  
  }
  
  table{
  background-color:#CCCCFF;  
  }
 div{
  width:100%;
  height:77px;
  background-color:white; 
  text-align: center;
  border:2px solid black;
  padding-top: 10px;
  
  }
  
  .head{
  display: flex;
  flex-direction: row;
  justify-content:space-around;
 
  
  }
  
  .addbook{
  height:50px;
  width:120px;
  background-color:orange; 
  margin-left:-100px;
  
  }
  
  .addbook a{
  color:black; 
  text-decoration: none;
  font-size: 20px;
  }
  
  a{
   
  text-decoration: none;
  }


h1 {
color: gray;
}

.btn{
 height: 25px;
 width:100px;
 font-size:17px;
 padding: 2px;
 background-color: #FAD7A0 ;
 color: white;
}
table th{
background-color: yellow;

}


table{
margin-top: 80px;
margin-left: 50px;
border: 4px solid orange;
height: 500px;
width:800px;
padding: 5px;
}


.head h1{
margin-right: 600px;
}
</style>

</head>
<body>

    <div class="head">
   <button class="addbook"> <a href="addStudent.jsp" >Add Student</a></button>
     <h1 >Registered Student </h1>
    </div>
   
   
   <%StudentService studentService=new StudentService(); %>
    <%List<Student> l1= studentService.displayAllStudentService();%>
   
   
   <table border="2">
          
          <tr>
              <th>StudentId</th>
              <th>StudentName</th>
              <th>StudentEmail</th>
              <th>StudentPassword</th>
              <th>StudentDepartment</th>
              <th>StudentBranch</th>
              <th>StudentAddress </th>
              <th style="color: red;">Delete</th>
              <th style="color: blue;">Update</th>
              
          </tr>
          
          <%for(Student student:l1){ %>
             <tr>
               <td> <%=student.getStudetId()%></td>
                <td> <%=student.getStudentName()%></td>
                <td> <%=student.getStudentEmail()%></td>
                <td> <%=student.getStudentPassword()%></td>
                <td> <%=student.getStudentDepartment()%></td>
                <td> <%=student.getBatch() %></td>
                <td> <%=student.getStudentAddress()%></td>
                <td > <button class="btn"><a href="deleteStudent?id=<%=student.getStudetId() %>"  style="color:red;">Delete</a></button></td>
                <td > <button class="btn"><a href="updateStudent.jsp?id=<%=student.getStudetId()%>"  style="color: blue;">Edit</a></button></td>
              </tr>
           <%} %>
   
   </table>

</body>
</html>