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

a{
text-decoration: none;
}




.top-header{
width: 100%;
height:28px;
background-color: #34495E;
color:white;
display:flex;
flex-direction:row;
justify-content: space-around;
align-items: center;
 
}

.nav{
width: 100%;
height:90px;
background-color:white;
border:0px solid silver;
border-top:0px;
box-shadow: 0px 5px 10px 0px silver;
display: flex;
flex-direction: row;

align-items: center;
}

.main-header{
width:100%;
height:100%;

display: flex;
flex-direction: row;
justify-content:space-around;
align-items: center;
gap:0px;
color:#34495E;
}

.heading{
font-weight: bolder;
font-size: xx-large;
color:#34495E;

}

.apply-button{
height: 30px;
width:120px;
border:  2px solid silver;
color:#34495E;
background-color: white;
font-size: ;
font-weight: bold;
}

.apply-button:hover{
border: 2px solid #34495E;
}


.header2{
height:30px;
width:100%;
border:2px solid silver;
background-color:white;
display: flex;
flex-direction: row;
justify-content:space-around;
align-items:center;
box-shadow: 0px 5px 10px 0px silver;
color:#34495E;
}

.header2 a{
color:#34495E;
}

.header2 a:hover{
color:orange;
}

.home-image{
height:700px;
width:100%;
background-color: gray;
background-image:url("https://www.univariety.com/blog/wp-content/uploads/2020/08/Blog-banner-image-1.jpg");
background-position: ;
background-repeat: no-repeat;
background-size: cover;
position: relative;

}

.social-media{
display: flex;
flex-direction: row;
justify-content:space-around;
align-items: center;
gap:25px;

}

.home-block{

height:320px;
width:370px;

 
 border:1px solid #34495E;
 background: rgba(0, 151, 19, 0.01);
   box-shadow: 0px 0px 20px 10px silver;
 
 color: white;
 position: absolute;
 top:130px;
 left:210px;
  text-align: inherit;
  padding: 10px;

}

.blockh1{
font-size: 50px;
font-weight: bolder;
color:;
}

.blockh2{
font-size: 20px;
font-weight: bold;
color:#34495E;

}

.ReadMore{
height: 30px;
width:100px;
border:  2px solid silver;
color:white;
background-color: #34495E;
font-size:;
font-weight: bold;
padding:5px;
margin-top: 20px;

}

body{
position: relative;
}




.main-profile-block{
height:900px;
width:280px;
background-color: #34495E;
position: relative; 

}

.profile-image{
height:100px;
width:100px;
border-radius:100%;
background-image:url("https://media.licdn.com/dms/image/D4D03AQGGK_LhN7xZHg/profile-displayphoto-shrink_800_800/0/1687105788606?e=1698278400&v=beta&t=iTfTK3RbToBuZs1TwCEDLbQpYMZKWjtL71OOWXYb7lA");
background-position: center;
background-size: cover;
background-repeat: no-repeat;
margin: auto;
margin-top: 10px;

border:2px solid silver;

}


.top-profile-block{
height:150px;
width:100%;
border-bottom:5px solid silver;
position: absolute;

}


.krishan{
color:silver;
font-weight: bolder;
font-size: 20px;
margin-left:80px;
}

.profile-list{
position:absolute;
top:150px;
display: flex;
flex-direction: column;
justify-content:space-around;
align-items: center;
gap:40px;
color:silver;
}

.crud{
height: 500px;
width: 900px;
background-color:yellow;
border:2px solid black;
position: absolute;
top:230px;
left:450px;
display: flex;
flex-direction: row;
flex-wrap: nowrap;
justify-content:space-around;
align-items:center;
}

.addStudent{
height: 230px;
width: 200px;
background-color:white;
box-shadow: 2px 2px 10px 5px grey;
border:2px solid white;
display: flex;
flex-direction: column;
flex-wrap: nowrap;
justify-content:space-around;
align-items:center;

}


#btn{
height: 25px;
width: 110px;
color:white;
font-size:small;
font-weight:bold;
background-color:#34495E; 
border:2px solid black;
text-align: center;
padding-top: 3px;



}

#user{

color:#34495E;
font-size: 100px;
}




</style>

<script src="https://kit.fontawesome.com/49d336bab5.js" crossorigin="anonymous"></script>

<script type="text/javascript">





</script>


<script src="https://kit.fontawesome.com/49d336bab5.js" crossorigin="anonymous"></script>

</head>
<body>

  <header class="header">
          
             <ul class="top-header" type="none">
                <li>  <i class="fa-sharp fa-solid fa-location-dot" style="font-size: small;"></i>  sector-3 Noida</li>
                <li>info@mygmail.com</li>
                <li>Opening:Monday to Friday (10am to 5pm)</li>
                <li class="social-media"> 
                    <i class="fa-brands fa-linkedin"></i>  
                    <i class="fa-brands fa-facebook"></i>  
                    <i class="fa-brands fa-square-twitter"></i> 
                    <i class="fa-brands fa-instagram"></i>
                 </li>
                
             </ul>
            
          <nav class="nav">
              <ul class="main-header" type="none">
                  <li>  <i class="fa-solid fa-building-columns" style="font-size:50px;"></i></li>
                 
                 
                 <li class="heading">EKLAVYA  INTITUE OF TECHNOLOGY <sup><i class="fa-solid fa-graduation-cap" style="font-size:15px;"></i></sup></li>
                 <li><i class="fa-solid fa-phone"></i> 0180196257 <br> com.eklavaya@.in</li>
                 <li><a href="apply.jsp"><button class="apply-button">Apply Now</button></a></li>
              </ul>
          </nav>
          
         <div class="header2">
              <a href=""><i class="fa-solid fa-house"></i>Home</a>
              <a href="">Couses</a>
              <a href="">Events</a>
              <a href="">Our Teachers</a>
              <a href="">Contact</a>
              <a href="">Addmision</a>
              <a href="">Alumunai</a>
              <a href="">About us</a>
              <a href="index.jsp"><i class="fa-solid fa-user"></i>  Logout</a>
         </div>

   </header>
   
   
   <section>
          <article class="main-profile-block">
          
                <div class="top-profile-block">
                    <div class="profile-image"></div>
                    <span class="krishan">Krishan Kumar</span>
                </div>
                
                
                  <ul class="profile-list" type="none">
                    <li> <a href="">Your Details</a></li>
                    <li>Your Task</li>
                    <li>Pending Work</li>
                    <li>Completed Task</li>
                     <li>Income</li>
                    <li>Connection</li>
                    <li>Rewards & Bonus</li>
                  </ul>
                
                
           </article>
   </section>
    
    
    <section class="crud">
         <div class="addStudent">
            <i class="fa-solid fa-user" id="user"></i>
            <a href="addStudent.jsp" id="btn"> Add Student</a>
         </div>
         
         <div class="updateStudent addStudent">
            <i class="fa-solid fa-user" id="user"></i>
            <a href="displaystudent.jsp" id="btn">Update Student</a>
         </div>
         
         <div class="displayStudent addStudent">
             <i class="fa-solid fa-user" id="user"></i>
             <a href="displaystudent.jsp" id="btn">Display Students</a>
         </div>
    </section>
  
   
   
   


</body>
</html>