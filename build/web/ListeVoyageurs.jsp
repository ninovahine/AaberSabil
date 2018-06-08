
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
                 <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <h5>Liste des voyageurs</h5>
                        </div>
                       
                    </div>
                     <h3 align="center"><a href="./ListeVoyageurs_1_1.jsp" style="color: orangered"  >Activer/Desactiver comptes Voyageurs</a></h3>
              <%
   try {
		String sql11="select * from voyageur";
		
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res1 = ps.executeQuery(sql11);
		int i=1;
		
   %>                   
       
                        
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        
                                        <th>Numero</th>
                                        <th>nom</th>
                                        <th>prenom</th>
                                        <th>Email</th>
                                        <th>telephone</th>
                                         
                                    </tr>
                                </thead>
                                <tbody>
                               <%  while(res1.next()) {%>
                                    <tr class="success">
                                         
                                        <td><%=i%> </td>
                                        <td><%=res1.getString("nom") %></td>
                                        <td><%=res1.getString("prenom") %></td>
                                        <td><%=res1.getString("email") %></td>
                                        <td><%=res1.getString("telephone") %></td>
                                         
                        <% 
    String emailV=res1.getString("Email");
session.setAttribute("emailV", emailV);
int etat=res1.getInt("etat_compte");
session.setAttribute("etat", etat);
i=i+1;
}
		
System.out.println("ga3ed yrechercher bien ;)");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
%>   
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
    
                    </div>
                </div>             
                  

   
                
                           
</body>
</html>