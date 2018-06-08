 

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="p5" class="Beans.Dpersonne" scope="session" />
       <jsp:setProperty name="p5" property="*"/>
       
       
      <h1>nom: <jsp:getProperty name="p5" property="nom"/></h1>
       <br>
       <h1>prenom:<jsp:getProperty name="p5" property="prenom"/></h1>
       <br>
       <h1>age:<jsp:getProperty name="p5" property="age"/></h1>
       <br>
       <h1>adresse:<jsp:getProperty name="p5" property="adresse"/></h1>
       <br>
       <h1>ville:<jsp:getProperty name="p5" property="ville"/></h1>
       <br>
       <h1>pays:<jsp:getProperty name="p5" property="pays"/></h1>
   
    <body>
        <h1> modification éffectuer avec succès</h1>

       <%Beans.Dpersonne p4=new Beans.Dpersonne();
       String id=(String)request.getParameter("id");
       String nom=(String)request.getParameter("nom");
       String prenom=(String)request.getParameter("prenom");
       String age=(String)request.getParameter("age");
       String adresse=(String)request.getParameter("adresse");
       String ville=(String)request.getParameter("ville");
       String pays=(String)request.getParameter("pays");

       p4.modifier(id, nom, prenom, age, adresse, ville, pays);
       %>