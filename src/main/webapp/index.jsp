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
align-items: center;
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


.main-box{

height: 400px;
width:80%;


position: absolute;
left:170px;
 top: 750px;
 
 display: flex;
 flex-direction: row;
 justify-content: space-between;


}

.box1{
 height:400px;
width:300px;
 border:1px solid #34495E;
 background: rgba(224,224,224, 0.51);
 position: relative;  

}

.box2{
 height:400px;
width:300px;
border:1px solid #34495E;
 background: rgba(224,224,224, 0.51);
position: relative;
}

.box3{
 height:400px;
width:300px;
border:1px solid #34495E;
 background: rgba(224,224,224, 0.51);
position: relative;
}

.box4{
 height:400px;
width:300px;
border:1px solid #34495E;
 background: rgba(224,224,224, 0.51);
position: relative;
}


.circle{
height: 150px;
width:150px;
border:2px solid orange;
position: absolute;
background-image:url("https://c8.alamy.com/comp/M5G2YM/athlete-starting-his-sprint-on-an-all-weather-running-track-runner-M5G2YM.jpg");
background-color: yellow;
border-radius:100%;
left:70px;
top:30px;
background-position:inherit;

background-size:150px 165px;
background-repeat: no-repeat;
}

.hr{
background-color:orange;
width: 100%;
height: 5px;
position: absolute;
top:220px;
}

.para1{
position: absolute;
top:250px;
color:#34495E;
font-size: 20px;
font-weight: bold;
text-align:center;
padding:5px;
}

.sports{
position: absolute;
top:185px;
left:105px;
color:gray;
font-weight: bolder;
font-size: x-large;
}








.circle2{
height: 150px;
width:150px;
border:2px solid orange;
position: absolute;
background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdnfrbtm-qOSLxUq6MTmZsZglanPHO1jmXeVjReJQ3KOyjkyscnCQrFZlLvSmQdFiecJc&usqp=CAU");
background-color: yellow;
border-radius:100%;
left:70px;
top:30px;
background-position:cover;
background-position:left;
background-clip:padding-box;
background-repeat: no-repeat;
}

.hr2{
background-color:orange;
width: 100%;
height: 5px;
position: absolute;
top:220px;
}

.para2{
position: absolute;
top:250px;
color:#34495E;
font-size: 20px;
font-weight: bold;
text-align:center;
padding:5px;
}

.sports2{
position: absolute;
top:185px;
left:105px;
color:gray;
font-weight: bolder;
font-size: x-large;
}


.circle3{
background-size:cover;
background-position:center;
background-clip:border-box;
background-repeat: no-repeat;
background-image: url("https://em-graphics.s3.us-west-2.amazonaws.com/archintel-media/a0S4y00000FnpB2EAJ.jpg");

}

.circle4{
background-size:cover;
background-position:center;
background-clip:border-box;
background-repeat: no-repeat;
background-image: url("https://images.datacamp.com/image/upload/v1685454800/learn_ai_robot_stairs_c6600dbdf5.png");
}



.motion{
height:30px;
width:100%;
/*border:2px solid black;*/
position:absolute;
top:10px;
left:0px;
background-color: transparent;


 animation-name:advertise;
    animation-duration:6s;
    animation-delay:0s;
    animation-timing-function:linear;
    animation-iteration-count:infinite;
    animation-direction:normal;
     /* animation:salemove  5s linear infinite; */

}

@keyframes advertise{
    0%{
        left: 0%;

    }
    



    100%{
        
        left:50%;
       

    }

} 



</style>

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
                 
                 
                 <li class="heading">EKLAVYA  INSTITUTE OF TECHNOLOGY <sup><i class="fa-solid fa-graduation-cap" style="font-size:15px;"></i></sup></li>
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
              <a href="adminlogin.jsp"><i class="fa-solid fa-user"></i>  Login</a>
         </div>

   </header>
   
    
  
   
   <section class="home-image"> 
            
         <article class="home-block">
            <div class="blockh1">Better Education for a Better World  </div>
            <div class="blockh2">Discover Your Future With EKLAVAYA INSTITUE OF TECHNOLOGY </div>
            <div class="ReadMore"> <a  href="" style="color: white;">Read More</a></div>
         </article>
           
           <div class="motion" style="colr:#34495E;">Welcome to Eklavya Institute Of Technology. Addmission open contact us for more details.Get Your Dream.          <span style="color: red;">Welcome!!</span>   Welcome to Eklavya Intitute Of Technology. Addmission open contact us for more details.Get Your Dream.</div>
            
   </section>
   
        <section class="main-box">
         
            <div class="box1">
              <span class="circle"></span>
              <hr class="hr">
              <span class="sports">Sports</span>
              <p class="para1">In addition to that, sports and games are known to develop the students holistically. They enhance the personality of individuals by imparting various traits in them.</p>
              
            </div>
            
            <div class="box2" >
            <span class="circle2"></span>
              <hr class="hr2">
              <span class="sports2">Yoga Classes</span>
              <p class="para2">In addition to that, sports and games are known to develop the students holistically. They enhance the personality of individuals by imparting various traits in them.</p>  
            </div>
            
            <div class="box3 box2">
            <span class="circle2 circle3"></span>
              <hr class="hr2 hr3" >
              <span class="sports2 sports3">Top Courses</span>
              <p class="para2 para3">In addition to that, sports and games are known to develop the students holistically. They enhance the personality of individuals by imparting various traits in them.</p>  
            </div>
            
            <div class="box4">
            <span class="circle2 circle4"></span>
              <hr class="hr2 hr4" >
              <span class="sports2 sports4">100% Placement</span>
              <p class="para2 para4">In addition to that, sports and games are known to develop the students holistically. They enhance the personality of individuals by imparting various traits in them.</p>  
            </div>
         
          </section>

    <aside>
    
    </aside>
    
    
    <footer>
         
    </footer>


</body>
</html>