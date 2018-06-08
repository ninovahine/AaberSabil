 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%String id=(String)request.getParameter("id");
        Beans.Dpersonne p3=new Beans.Dpersonne();
        java.util.Vector v1=p3.rechercher(id);
        int i;
        for( i=0;i<v1.size();i++){
        Beans.Dpersonne p=(Beans.Dpersonne)v1.elementAt(i);
        out.println("l'identité est :\n" +p.getIdent());%>
         <br>
         <%out.println("le nom est:\n" +p.getNom());
         %>
        <br>
         <%out.println("le prenom est:\n" +p.getPrenom() );%>
        <br>
         <% out.println("l'age est:\n" +p.getAge());%>
         <br>
         <%out.println("l'adresse est:\n" +p.getAdresse());%>
         <br>
         <%out.println("la ville est:\n" +p.getVille());%>
         <br>
         <%out.println("le pays est:\n" +p.getPays());
         }
          %>
    </body>
</html>