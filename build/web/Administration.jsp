<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@page import="Beans.Admin"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Administration</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets1/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets1/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets1/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>


<jsp:useBean id="Admin" class="Beans.Admin" scope="session"/>

<body>
        
    <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  
                </div>
              
                <span class="logout-spn" >
                  <a href="index.jsp" style="color:#fff;">Welcome</a>  
                  

                </span>
                <h1  style="color: white"><img src="Image3.png" align="top" width="100 px"> Administrateur Aaber Sabiil</h1>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="Administration.jsp" ><i class="fa fa-desktop "></i>Dashboard <span class="badge"></span></a>
                    </li>
                   

                    <li>
                        <a href=""><i class="fa fa-table "></i>Les evenements <span class="badge"></span></a>
                    </li>
                    <li>
                        <a href="EditAdmin.jsp"><i class="fa fa-edit "></i>Editer mon profile <span class="badge"></span></a>
                    </li>


                    <li>
                        <a href="index.jsp"><i class="fa fa-sign-out "></i>logout</a>
                    </li>
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN <jsp:getProperty name="Admin" property="prenom"/>   <jsp:getProperty name="Admin" property="nom"/> </h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong> </strong> 
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                            <div class="row text-center pad-top">
                  
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           
 <i class="fa fa-envelope-o fa-5x"></i>
              
                      
                      </div>
                     
                      <input type="submit" name="message" value="Messages" >       
                  </div>
                 <form action="ListeVoyageurs.jsp">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           
 <i class="fa fa-users fa-5x"></i>
                    
                      </div>
                         <input type="submit" name="voyageur" value="liste des voyageurs" > 
                       </div>
   </form>
                    <form action="ListeHote2.jsp">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           
 <i class="fa fa-users fa-5x"></i>
                      
                       </div>
                        <input type="submit" name="hote" value="liste des hote" >       
                       </div>  
                
                      </form>
 <form action="Statestiques.jsp">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           
 <i class="fa fa-bar-chart-o fa-5x"></i>
                    
                      </div>
                         <input type="submit" name="voyageur" value="Les statestiques" > 
                       </div>
   </form>
                      
                      
                     
                     
                     
                  </div>
                  
           
              </div>
                 <!-- /. ROW  --> 
                
                 
                 
                 
                 
                 
                 <!-- /. ROW  -->   
				  
                  <!-- /. ROW  --> 
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
       
    <div class="footer">
            <div class="row">
                <div class="col-lg-12" >
                    &copy;  2014 yourdomain.com | Design by: <a href="http://binarytheme.com" style="color:#fff;" target="_blank">www.binarytheme.com</a>
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>