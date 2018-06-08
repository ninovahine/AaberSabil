 

<%@page import="java.util.Vector"%>
 
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
        String dateD = request.getParameter("dateD");
        String nbrp = request.getParameter("nbrP");
           Date dateAR,dateDepart ;
          //String datem="29/05/2018";
        //String dateD="30/05/2018";
        
        //===============================
        
        //===============================
        
                    // rodinahom des dates
           dateAR=new SimpleDateFormat("dd/MM/yyyy").parse(datem);
           dateDepart=new SimpleDateFormat("dd/MM/yyyy").parse(dateD);
                    // bah nrodouhom des jours (samedi dimeche.....)
           DateFormat dateFormat=new SimpleDateFormat("EEEEEEEE");
           String nhar_dateF=dateFormat.format(dateAR);
           String nhar_dateDep=dateFormat.format(dateDepart);
           System.out.print("jour d'arrivé "+nhar_dateF+" le jour de depart "+nhar_dateDep);
         /*
           //==========================================
           // nrodouhom le jour gedah f chhar (1,5....)
           
            DateFormat dateFormatjour=new SimpleDateFormat("dd");
                     String dateNumArrivé=dateFormatjour.format(dateAR);
                     String dateNumDepart=dateFormatjour.format(dateDepart);
                     //nhotouhom fi variable pour calculer le nbr de jours
                     
        // kayna haja lazem ntesti 3liha ki ykoun lekher ta3 chhar exmpl date d'arrive le 31 et le depart le 2 de mois suivant
                    int Arrive=java.lang.Integer.parseInt(dateNumArrivé);
                    int Depart=java.lang.Integer.parseInt(dateNumDepart);
                     int nbrJours=Depart-Arrive+1;
                     Vector <String> jours=new Vector <String>();
                      Vector <String> v=new Vector <String>();
        v.add("samedi");v.add("dimenche");v.add("lundi");v.add("mardi");v.add("mercredi");v.add("jeudi");v.add("vendredi");
                     int indexDay=v.indexOf(nhar_dateF)-1;
        for (int i = 0; i <nbrJours; i++) {
            indexDay=indexDay+1;
            if (indexDay==7) {indexDay=0;}
            System.out.print(v.get(indexDay )+"\t");
            String[] tab =new String[nbrJours];
            
            //tab[i]=v.get(indexDay );
            
        
        
        if(!(jours.contains(v.get(indexDay )))){
           jours.add(v.get(indexDay ));
           
        }
        }
        System.out.println();
        System.out.println(jours.toString());
        //System.out.println();
        //System.out.println("la fin de sejour sera le "+v.get(indexDay)); 
        
            String vect=jours.toString();
            
            String h=vect.replace("[", "('");
            String n=h.replace("]", "')");
            String k=n.replace(", ", "','");
            
     System.out.println("sssssssssbbbbbbbbbsssssss");
     System.out.println(k);
           // hna b9atlii nrod (vendredi, samedi, dimenche, lundi, mardi, mercredi, jeudi) ==>("vendredi", "samedi", "dimenche", "lundi"," mardi", "mercredi", "jeudi")
           
           */
 try {
	//String sql3="select * from hote where willaya ='"+wil+"'and  joursTravail='"+nhar_dateF+"' and emejour="+nhar_dateDep+"'";
	//String sql3="select * from hote where joursTravail='"+nhar_dateF+"' and jour2='"+nhar_dateDep+"'";
        String sql3="select * from hote where joursTravail ='"+nhar_dateF+"' and jour2='"+nhar_dateDep+"'and willaya='"+wil+"'and nbrp='"+nbrp+"'" ;
	Class.forName("org.postgresql.Driver"); 
	Connection con;
	con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil", "postgres", "admin");
	Statement ps = con.createStatement();
	
	
	ResultSet res1 = ps.executeQuery(sql3);
	
	//while(res1.next()) {
 %> 
 <form method="post" action="Reservation">
 <div class="graph">
<div class="tables">
<table class="table">
<thead> <tr> <th>nom</th> <th>prenom</th> <th>Email</th> <th>telephone</th> <th> Sexe</th> </tr> </thead>
<tbody>
   <% while(res1.next()) {
 %> 
<tr class="active"> 
 <th scope="row"><%=res1.getString("nom") %></th> 
              <td><%=res1.getString("Prenom") %></td> 
              <td><%=res1.getString("Email") %></td> 
              <td><%=res1.getString("Telephone") %></td>
              <td><%=res1.getString("sexe") %></td>
              <td> <input type="checkbox" name="checked" >Réserver</td>
</tr>
 			<%}%>	             
 </tbody>
 </table>
 </div>
 </div>
 <%-- <p>Nom</p><%=res1.getString("nom") %><br>

<p>Prenom</p><%=res1.getString("Prenom") %><br>
<p>Email</p><%=res1.getString("Email") %><br>

<p>Telephone</p><%=res1.getString("Telephone") %><br>
<p>Sexe</p><%=res1.getString("sexe")%><br>
 --%>
<%
String mailh=res1.getString("Email");
session.setAttribute("mailh", mailh);
session.setAttribute("date", nhar_dateF);
session.setAttribute("date1", nhar_dateDep);
session.setAttribute("nbrp", nbrp);

		
System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
%>






<a href=""></a>


<button type="submit" name="submit"  class="tm-yellow-btn1" >valider la Réservation</button><br>
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