
<!DOCTYPE html>
<%@page import="Beans.Humain"%>
<html lang="en">
<head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Edit Profile Voyageur</title>
<!--
Holiday Template
http://www.templatemo.com/tm-475-holiday
-->
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">  
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/templatemo-style.css" rel="stylesheet">
  

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

  </head>
  
  <jsp:useBean id="Voyageur" class="Beans.Humain" scope="session"/>
  
  
  
  <body class="tm-gray-bg">
   <%
  if (session.getAttribute("mail") == null) {
		request.setAttribute("message", "desole, votre session est fermeé");
		request.getRequestDispatcher("login.jsp").forward(request, response);
		;

	}
  %>
  
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  					<a href="#" class="tm-site-name">Aaber Sabiil</a>	
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
						<ul>
							<li><a href="index.jsp" class="active">Home</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="tours.html">Our Tops</a></li>
							<li><a href="contact.html">Contact</a></li>
							<li><a href="index.jsp">logout</a></li>
							 <li>			
							<li><a href="#"><img src="img/Image1xxx.png" alt="Image" /><%
								out.print(session.getAttribute("mail"));
							%></a>
											<li>
	
          <a href="#"  data-toggle="dropdown">
            <i class="fa fa-caret-down" ></i>
           
          </a>
          
          <ul class="dropdown-menu pull-right">
            
            <li> <a href="#"><i class=" fa fa-user"></i>Edit Profile </a> </li>
            <li> <a href=""> <i class=" fa fa-globe"></i> Mes Réservations </a> </li>
            <li> <a href=""> <i class=" fa fa-envelope"></i> Messages </a>  </li>
            
            
            
          </ul>
          </li>
          </ul>
         
										
       
				
							
						</ul>
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
  	
  	
  	<section class="section-padding-bottom">
		<div class="container">
			<div class="row">
				<div class="tm-section-header section-margin-top">
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>
					<div class="col-lg-4 col-md-6 col-sm-6"><h2 class="tm-section-title">Editer Mon Profile</h2></div>
					<div class="col-lg-4 col-md-3 col-sm-3"><hr></div>	
				</div>				
			</div>
			<div class="row">
				<!-- contact form -->
				<form action="EditerPro" method="post" class="tm-contact-form">
					<div class="col-lg-6 col-md-6">
						<div id="google-map">
						<img src="img/user.jpg" alt="Image" />
						<hr>
						<div class="contact-social">
							<a href="#" class="tm-social-icon tm-social-facebook"><i class="fa fa-facebook"></i></a>
				      		
				      		<a href="#" class="tm-social-icon tm-social-instagram"><i class="fa fa-instagram"></i></a>
				      		<a href="#" class="tm-social-icon tm-social-google-plus"><i class="fa fa-google-plus"></i></a>
						</div>
						          
						</div>
						
					</div> 
					<div class="col-lg-6 col-md-6 tm-contact-form-input">
						<div class="form-group">
							<input type="text" id="contact_name" class="form-control" name="nom" value=<jsp:getProperty name="Voyageur" property="nom"/> />
						</div>
							<div class="form-group">
							<input type="text" id="contact_name" class="form-control" name="prenom" value=<jsp:getProperty name="Voyageur" property="prenom"/> />
						</div>
						<div class="form-group">
							<input  type="email" id="contact_email" class="form-control" name="mail" value=<jsp:getProperty name="Voyageur" property="email"/>
								
							 />
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="psw" value=<jsp:getProperty name="Voyageur" property="motdepasse"/>
							 />
						</div>
						<div class="form-group">
							<input type="text"  class="form-control" name="tel" value=<jsp:getProperty name="Voyageur" property="telephone"/>
							/>
						</div>
						<hr>
						<div class="form-group"><br><br>
							<button class="tm-submit-btn" type="submit" name="mod">MODIFIER</button> 
						</div>               
					</div>
				</form>
			</div>			
		</div>
	</section>
	
  	
	</body>
 </html>