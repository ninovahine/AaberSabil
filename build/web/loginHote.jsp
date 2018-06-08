<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Login Hote</title>
  
  
  
      <link rel="stylesheet" href="css3/style.css">

  
</head>

<body>

  <div class="wrapper">
	<div class="container">
		<h1>Bienvenue</h1>
		<div style="color:red;">
				${message}
				</div>
		<form class="form" method="post" action="loginHote">
		
			<input type="text" name="user" placeholder="Username">
			<input type="password" name="pass" placeholder="Password">
			<button type="submit" id="login-button">Login</button>
			
		</form>
	</div>
	
	
</div>
                                
  <!-- <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script> -->

  

   <!--  <script  src="js3/index.js"></script> -->




</body>

</html>
