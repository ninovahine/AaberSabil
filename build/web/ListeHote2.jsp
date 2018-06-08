<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
     <link rel="icon" type="image/png" href="NANA-AABER-SABIL3-ConvertImage.ico"/>
<%@page import="Beans.Admin"%>
<%@page import="Beans.Hote"%>
<%@page import ="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Liste des hotes</title>
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
             
                <span class="logout-spn"  >
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
                     <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <h5>Liste des Hotes</h5>
                        </div>
                       
                    </div>
                     <h3 align="center"><a href="./ListeHote.jsp" style="color: orangered"  >Activer/Desactiver comptes Hotes</a></h3>
                     <%
                     
   try {
		String sql12="select * from hote";
		
              //  String sql1="UPDATE hote SET  etat_compte='0' WHERE email='"+compte+"'\";";
		Connection con;
		
		Class.forName("org.postgresql.Driver"); 
		
		con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/AaberSabiil","postgres", "admin");
		Statement ps = con.createStatement();
		ResultSet res2 = ps.executeQuery(sql12);
session.setAttribute("res",res2);
		//Vector <ResultSet> compte=new Vector <ResultSet>();
                    Vector <String> compte2=new Vector <String>();
                    Vector <String> compte1=new Vector <String>(); 
                int i=1;
                                     /*  while(res2.next()){
 
  compte.add(res2.getString("email"));
//String email= res2.getString("email");

                                       }
                                       System.out.println(compte.toString());
                */
		
	
	
	//ResultSet res1 = ps.executeQuery(sql3);
			
   %>                   
               
      
                           
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                         <th>Numero</th>
                                        <th>Nom</th>
                                        <th>prenom</th>
                                        <th>Email</th>
                                        <th>telephone</th>
                                        <th>Willaya</th>
                                        <th>JoursTravail</th>
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <% System.out.println("ani 9bel while");
                                    
                                   while(res2.next()) {%>
                                    <tr class="success">
                                         
                                        <td><%=i%> </td>
                                        <td><%=res2.getString("nom")%> </td>
                                        <td><%=res2.getString("prenom") %></td>
                                        <td><%=res2.getString("Email") %></td>
                                        <td><%=res2.getString("telephone") %></td>
                                        <td><%=res2.getString("Willaya") %></td>
                                        <td><%=res2.getString("joursTravail") %></td>
                                         
                                      <%--  <td><%=res2.getString("etat_compte") %>
                                        <div class="input-group">
                                            <%String b=res2.getString("email");
                                            System.out.println(b);
                                                String sql1="UPDATE hote SET  etat_compte='0' WHERE email='"+b+"'"; %>
 <input type="submit" class="button" name="activer" value="activer" onclick="this.ps.executeQuery(sql1);">
 
  <input type="submit" class="button" name="desactiver" value="desactiver" onclick="this.ps.executeQuery(sql1);">                                                                                                              

                                             <input type="radio" name="activer" value="activer" id="etat_compte"/>
                                                       <label for="etat_compte">Activer</label>
                                                    <input type="radio" name="desactiver" value="desactiver" id="etat_compte"/>
<label for="etat_compte">Désactiver</label>--%>
                                       
                                        
                                        </td>
                                        <%
                                            //=====================
                                                
		/*ArrayList <Hote> v= (ArrayList)session.getAttribute("ListeVehicules");
						//int c=0;
			for(int c=0;c<v.size();c++) {
		Hote v2=(Hote)v.get(c);
		String url=v2.getEmail();
		
		session.setAttribute("Hote",v2);}*/
		
		
                                            //=====================
                                
 //compte2.add(res2.getString("Email"));
// compte2.add(""+res2.getInt("etat_compte"));
 //compte2.get(i+1);
  
//String email= res2.getString("email");
//compte2 = userControl.getall();
                                       
                                       //session.setAttribute("emailH", email);
String emailH=res2.getString("Email");
session.setAttribute("emailH", emailH);
int etat=res2.getInt("etat_compte");
 
//java.lang.Integer.parseInt("ffff");
session.setAttribute("etat", etat);
//System.out.println("mon dernier compte ajouteé "+compte2.get(i));
i=i+1;
}
	//compte2.elementAt(i);
//i=i-2;
//System.out.println(" l i = "+i);
//System.out.println("ga3ed yrechercher bien ;) l i = "+compte2.get(5));
System.out.println("ga3ed yrechercher bien ;)  = ");
	} catch (Exception e) {
		
System.out.println("mahouch ga3ed yrechercher" +e.getMessage());
	}
%>
                                    </tr>
                                   
                                </tbody>
                            </table>
                        </div>
                                         
                                    
                                   
         <%--</form>--%>

                    </div>
                </div>                  
  






  
</body>
</html>