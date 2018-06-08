
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
                 <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <h5>Liste des voyageurs</h5>
                        </div>
                       
                    </div>
              <%
   try {
		String sql11="select count(nom) from voyageur ";
		String sql22="select count(email) from hote";
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res77 = ps.executeQuery(sql11);
               
		 
              %>
		
       <form method="post" action="statistique"> 
                        
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                   
                                        <%  while(res77.next()) {%>
                                        <h3>Nombre des Voyageurs  <%=res77.getString("count") %></h3> 
                                        <%} ResultSet res2 = ps.executeQuery(sql22);
                                        while(res2.next()){%>
                                        <h3>Nombre des Hotes <%=res2.getString("count") %></h3>
                                        <h3>Nombre des Réservation</h3>
                                         
                                        
                                     
                                </thead>
                                <tbody>
                                     <div class="col-md-3 col-sm-6 col-xs-12">
              <div class="info-box">
                <span class="info-box-icon bg-green"><i class="ion ion-ios-cart-outline"></i></span>
                <div class="info-box-content">
                  <span class="info-box-text">Sales</span>
                  <span class="info-box-number">760</span>
                </div><!-- /.info-box-content -->
              </div><!-- /.info-box -->
            </div><!-- /.col -->
                              
                                        
                                        
    
    
                        <%                                
 
		 
System.out.println("ga3ed yrechercher bien ;)" );}}
	 catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
%>   
               
                                    
                                </tbody>
                            </table>
                        </div>
                         </form>          
                    </div>

                </div>             
                  

   
                   
                 
                 </body>
</html>
