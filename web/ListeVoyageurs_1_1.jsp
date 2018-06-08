
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@page import="Beans.Admin"%>
<%@page import="Beans.Humain"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Servlets.listeVoyageur"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Liste des Voyageurs</title>
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
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 


                    <li class="active-link">
                        <a href="Administration.jsp" ><i class="fa fa-desktop "></i>Dashboard </a>
                    </li>
                   

                    <li>
                        <a href=""><i class="fa fa-table "></i>Les evenements </a>
                    </li>
                    <li>
                        <a href="EditAdmin.jsp"><i class="fa fa-edit "></i>Editer mon profile </a>
                    </li>


                    <li>
                        <a href="index.jsp"><i class="fa fa-sign-out "></i>logout</a>
                    </li>
                    
                </ul>
                            </div>

        </nav>
        <div id="page-wrapper" >
             <div id="page-inner"> 
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN <jsp:getProperty name="Admin" property="prenom"/>   <jsp:getProperty name="Admin" property="nom"/> </h2>   
                    </div>
                </div> 
                    <form method="post" action="listeVoyageur"> 
                 <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <input type="submit" name="button" class="btn btn-primary" value="Activer/Désactiver comptes Voyageurs" >
                        </div>
                       
                    </div>
                             
       
                        <% System.out.println("ani fel jsp lewla listeVoyageur_1_1.jsp");%>
                         
                        
                                    
</form>         
                    </div>
                </div>             
                  

   
                
                           
</body>
</html>