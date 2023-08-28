<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>form</title>

<style>
*{
box-sizing: border-box;
padding: 0;
margin: 0;
}

h1{
text-align: left;
}

.formpage{
height: 500px;
width: 300px;
background-color: #34495E;
border: 2px solid gray;

display: flex;
flex-direction: column;
flex-wrap: wrap;

justify-content: flex-start;
align-items: flex-start;

}



</style>



</head>
<body>
<h1>Apply Now</h1>

<form action="myData"  class="formpage">

<label for="name">Name:</label>
<input type="text" id="name" name="myName" placeholder="Enter Your Name">
<br>

<label for="email">Email:</label>
<input id="email" type="email" name="myEmail" placeholder="Enter Email">
<br>



<label for="address" >Address:</label>
<input type="text" id="address" name="myAddress" placeholder="Enter Your Address" >
<br>

<label for="gender">Gender:</label>
   <div id="gender">
      Male<input type="radio" name="gender" value="Male" >
      Female<input type="radio" name="gender" value="Female">
      Other<input type="radio" name="gender" value="Other" >
</div>
<br>
<input type="submit" value="Submit">
</form>

</body>
</html>