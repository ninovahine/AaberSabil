
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page import="Beans.Admin"%>
<%@page import="Beans.Hote"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Servlets.listeHote"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Liste des Hotes</title>
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
                             <h5>Liste des Hotes</h5>
                        </div>
                       
                    </div>
                             
        
                     
                                     <% try {
		String sql11="select * from hote";
		
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res1 = ps.executeQuery(sql11);int ii=1;
		 %>
                 <h1 style="color: green" align="center">Selectionner un seul Hote</h1>
   <form method="post" action="etat_compteHote">
                          <div class="table-responsive">
                            <table class="table">
                                 <thead>
                                    <tr>
                                        
                                         
                                        <th>Email</th>
                                        <th>Etat_compte</th>
                                        <th>Activer/Desactiver</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <% System.out.println("ani fel jsp listeHote_1.jsp");
                                    %>
                                     <tr class="success">
                                    <c:forEach  var="i" begin="0" end="${requestScope.liste.size()}" step="1">
                                    <tr>
                                         
                                        <td>${requestScope.liste.get(i).email}</td>
                                        <td>${requestScope.liste.get(i).etat_compte}</td> 
                                        <td>  
                                             
                                            <input type="submit" class="btn btn-success" name="button"  value="Activer" > 
                                             <input type="submit" class="btn btn-danger" name="button"  value="Desactiver" > 
                                            <%--button class="btn btn-danger" name="button"value="Desactiver" >Desactiver</button>
                                             
                                              <%--  while(res1.next()) { --%>
                                          <input type="checkbox" name="buttonHiden"     value="${i}">
                                          <%--ii=ii+1;}--%>
                                            <%--   <input type="submit" name="button"   class="btn btn-success" value="Activer<%=i%>" >
                                               <input type="submit" name="button" class="btn btn-danger" value="Desactiver<%=i%>" >--%>
                                             
                                         </td>
                                     
                                    </c:forEach> --%>
                                    
                                
                                    
                                          
<% 
		
System.out.println("ga3ed yrechercher bien ;)");
	}catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
%>   
                </tr>
                                </tbody>
                            </table>
                 </div>
                                </form>
                        
                                    
       
                    </div>
                </div>             
                  
       
                           
</body>
</html>