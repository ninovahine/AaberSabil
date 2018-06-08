<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import ="java.sql.Date"%> --%>
<%@page import ="java.util.Date"%>
<%@page import ="java.text.*"%>
<%@page import ="java.sql.SQLException"%>
<%@page import= "java.text.DateFormat"%>
<%@page import=" java.text.SimpleDateFormat"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Aaber Sabiil</title>
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
<!-- ===**********************************************css result Search************************************************* === -->

  <!-- Template CSS -->
 <link rel="stylesheet" href="css_resultSerach/animate.css" rel="stylesheet">
<link rel="stylesheet" href="css_resultSerach/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css_resultSerach/nexus.css" rel="stylesheet">
<link rel="stylesheet" href="css_resultSerach/responsive.css" rel="stylesheet">
<link rel="stylesheet" href="css_resultSerach/custom.css" rel="stylesheet">
<!-- Google Fonts-->       
 <link href="http://fonts.googleapis.com/css?family=Roboto:400,300" rel="stylesheet" type="text/css">       
 <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" rel="stylesheet" type="text/css">
   

<!-- ===**********************************************end css result search********************************************* === -->


  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
div.gallery {
    border: 1px solid #ccc;
}

div.gallery:hover {
    border: 1px solid #777;
}

div.gallery img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
}

* {
    box-sizing: border-box;
}

.responsive {
    padding: 0 6px;
    float: left;
    width: 24.99999%;
}

@media only screen and (max-width: 700px) {
    .responsive {
        width: 49.99999%;
        margin: 6px 0;
    }
}

@media only screen and (max-width: 500px) {
    .responsive {
        width: 100%;
    }
}

.clearfix:after {
    content: "";
    display: table;
    clear: both;
}
</style>
  </head>
  <body class="tm-gray-bg">
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
							<!-- <li><a href="inscrireVoyageur.html">S'inscrire</a></li>
							<li><a href="login.jsp">Login</a></li> -->
							<li><a href="#">S'inscrire</a>
							<li >
          <a href="#"  data-toggle="dropdown">
            <i class="fa fa-caret-down" aria-hidden="true" ></i>
            
          </a>
          <ul class="dropdown-menu pull-right">
            
            <li class="divider"></li>
            <li><a href="inscrireVoyageur.html">Voyageur</a></li>
            <li><a href="inscrireHote.html"> Hote</a></li>
            
            
          </ul>
        </li>
							
							<li><a href="#">Login</a>
							<li>
          <a href="#"  data-toggle="dropdown">
            <i class="fa fa-caret-down" ></i>
            
            <span ></span>
          </a>
          <ul class="dropdown-menu pull-right">
            
            <li ></li>
            <li><a href="login.jsp">Voyageur</a></li>
            <li><a href="loginHote.jsp"> Hote</a></li>
            
          </ul>
        </li>
							
						</ul>
					
					</nav>		
	  			</div>				
  			</div>
  		</div>	  	
  	</div>
	<!-- ===*********************************************************************************************** === -->
	 <!-- === BEGIN CONTENT === -->
  
                
  <div id="content">        
 	<div class="container">                     
     		<div class="row margin-vert-30">                             
			<div class="col-md-12">                                  
 <h2>Search result</h2><br>
<!--  <!-- Filter Buttons -->
<!-- <div class="portfolio-filter-container margin-top-20">
	<ul class="portfolio-filter">                                          
	  <li class="portfolio-filter-label label label-primary">
 
</li>      -->
 
<% 
String wil = request.getParameter("Willaya");
String datem = request.getParameter("dateA");
System.out.println("ladate esss"+datem);
String nbrp = request.getParameter("nbrP");
   Date date ;
   Date d;
   
   date=new SimpleDateFormat("yyyy-MM-dd", Locale.FRENCH).parse(datem);
   //DateFormat format = new SimpleDateFormat("MM/dd/yyyy", Locale.FRENCH) ;
 //  Date cc =format.parse(datem);
   System.out.println("cccccccccccccccccccccccccccccccc"+date);
   //System.out.println("date ccccccccccccccc "+cc);
   d=new SimpleDateFormat("dd").parse(datem);
   System.out.println("la date est chch " +d);
   DateFormat datef= new SimpleDateFormat("yyyyMMdd");
   DateFormat dateFormat=new SimpleDateFormat("EEEEEEEE");
   System.out.println("la date est datef " +datef);
   System.out.println("la date est dateFormat " +dateFormat);
   String dateF=dateFormat.format(date);
   String dateD= datef.format(d);
   System.out.println("la date est dateF " +dateF);
   System.out.println("la date est dateD " +dateD);
	
   
   
try {
String sql3="select * from hote where willaya='"+wil+"'AND joursTravail='"+dateF+"'AND nbrP='"+nbrp+"'";

Connection con;

Class.forName("org.postgresql.Driver"); 

con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
Statement ps = con.createStatement();
ResultSet res1 = ps.executeQuery(sql3);

while(res1.next()) {
%>
<form method="post" action="Reservation" >
<div class="row1">
    <div class="responsive">
  <div class="gallery">
    <a target="_blank" href="<%= request.getContextPath() %>/img/<%=res1.getString("image")%>">
      <img src="<%= request.getContextPath() %>/img/<%=res1.getString("image")%>" alt="Forest" width="600" height="400">
    </a>
    <div class="desc"><div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20"><%=res1.getString("willaya") %></p>	
								<p class="gray-text"></p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description"><%=res1.getString("nom") %>
								<%=res1.getString("prenom") %> </p>
                                                                
                                                                
							</div>	
                                                                <input type="submit" name="Réserver" value="Réserver" align="center" > 
						</div>
                                                        <div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								nombres de jours :<%=res1.getString("nombreJ") +"\t"%> 
                                                                <%--input type="submit" name="Réserver" value="Réserver" --%>
                                                                <input type="checkbox" name="checked" >Réserver
                                                                <%--button>Réserver</button--%>
							</div>
							<a href="#" class="tm-tours-box-1-link-right">
								<%=res1.getString("nbrP") %> 								
							</a>							
						</div>
    </div>
  </div>
</div>
				<%--<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="tm-tours-box-1">
						<img src="<%= request.getContextPath() %>/img/<%=res1.getString("image")%> "alt="image" class="img-responsive">
                                                
						<div class="tm-tours-box-1-info">
							<div class="tm-tours-box-1-info-left">
								<p class="text-uppercase margin-bottom-20"><%=res1.getString("willaya") %></p>	
								<p class="gray-text"></p>
							</div>
							<div class="tm-tours-box-1-info-right">
								<p class="gray-text tours-1-description"><%=res1.getString("nom") %>
								<%=res1.getString("prenom") %> </p>	
							</div>							
						</div>
						<div class="tm-tours-box-1-link">
							<div class="tm-tours-box-1-link-left">
								nombres de jours :<%=res1.getString("nombreJ") +"\t"%> <input type="checkbox" name="checked" >Réserver
							</div>
							<a href="#" class="tm-tours-box-1-link-right">
								<%=res1.getString("nbrP") %> 								
							</a>							
						</div>
					</div>					
				</div>
                                                        --%>
</div>
<%--}--%>

 <%--form method="post" action="Reservation" >
 <div class="graph">
<div class="tables">
<table class="table">
<thead> <tr> <th>nom</th> <th>prenom</th> <th>Email</th> <th>telephone</th> <th> Sexe</th> </tr> </thead>
<tbody>
<tr class="active"> 
    <%ResultSet res2 = ps.executeQuery(sql3);

while(res2.next()) {%>
 <th scope="row"><%=res2.getString("nom") %></th> 
 <td><%=res2.getString("Prenom") %></td> <td><%=res2.getString("Email") %></td>
 <td><%=res2.getString("Telephone") %></td><td><%=res2.getString("sexe") %></td><td> 
     <input type="checkbox" name="checked" >Réserver</td> </tr>
 <%}--%> 			             
 
 
<%
res1.getString("nom") ; 
  res1.getString("Prenom") ;res1.getString("Email") ;
 res1.getString("Telephone") ;  res1.getString("sexe") ;


String mailh=res1.getString("Email");

session.setAttribute("mailh",mailh);
session.setAttribute("date",datem);
String nbrj=res1.getString("nombreJ");
int i = Integer.parseInt(dateD)+ Integer.parseInt(nbrj);
System.out.println(i);
String datez= Integer.toString(i);
SimpleDateFormat originalFormat = new SimpleDateFormat("yyyyMMdd");
Date dateDD = originalFormat.parse(datez);
DateFormat dateff=new SimpleDateFormat("yyyy-MM-dd");
String dateDep=dateff.format(dateDD);
session.setAttribute("dated", dateDep);
session.setAttribute("nbrP",nbrp);
 }
System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}

%>
</tbody>
 </table>
 </div>
 </div>

<button type="submit" name="submit"  class="tm-yellow-btn" >valider la Réservation</button>
</form>	
	<footer class="tm-black-bg">
		<div class="container">
			<div class="row">
				<p class="tm-copyright-text">Copyright &copy; université constantine2   | Abd El-Hamid Mehri</p>
		</div>		
	</footer>
 
	<script type="text/javascript" src="js/jquery-1.11.2.min.js"></script>      		<!-- jQuery -->
  	<script type="text/javascript" src="js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
<!--
	<script src="js/froogaloop.js"></script>
	<script src="js/jquery.fitvid.js"></script>
-->
   	<script type="text/javascript" src="js/templatemo-script.js"></script>      		<!-- Templatemo Script -->
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})

        	$('.date').datetimepicker({
            	format: 'MM/DD/YYYY'
            });
            $('.date-time').datetimepicker();

			// https://css-tricks.com/snippets/jquery/smooth-scrolling/
		  	$('a[href*=#]:not([href=#])').click(function() {
			    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
			      var target = $(this.hash);
			      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
			      if (target.length) {
			        $('html,body').animate({
			          scrollTop: target.offset().top
			        }, 1000);
			        return false;
			      }
			    }
		  	});
		});
		
		// Load Flexslider when everything is loaded.
		$(window).load(function() {	  		
			// Vimeo API nonsense

/*
			  var player = document.getElementById('player_1');
			  $f(player).addEvent('ready', ready);
			 
			  function addEvent(element, eventName, callback) {
			    if (element.addEventListener) {
			      element.addEventListener(eventName, callback, false)
			    } else {
			      element.attachEvent(eventName, callback, false);
			    }
			  }
			 
			  function ready(player_id) {
			    var froogaloop = $f(player_id);
			    froogaloop.addEvent('play', function(data) {
			      $('.flexslider').flexslider("pause");
			    });
			    froogaloop.addEvent('pause', function(data) {
			      $('.flexslider').flexslider("play");
			    });
			  }
*/

			 
			 
			  // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
/*

			  $(".flexslider")
			    .fitVids()
			    .flexslider({
			      animation: "slide",
			      useCSS: false,
			      animationLoop: false,
			      smoothHeight: true,
			      controlNav: false,
			      before: function(slider){
			        $f(player).api('pause');
			      }
			  });
*/


			  

//	For images only
		    $('.flexslider').flexslider({
			    controlNav: false
		    });


	  	});
	</script>
 </body>
 </html>