

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:useBean id="p1" class="Beans.Humain" scope="session"/>
    <BODY>
    <%--<h1>id:<jsp:getProperty name="p1" property="ident"/></h1>--%>
    <h1>nom:<jsp:getProperty name="p1" property="nom"/></h1>
    <h1>prenom:<jsp:getProperty name="p1" property="prenom"/></h1>
    <%--<h1>age:<jsp:getProperty name="p1" property="age"/></h1>--%>
    <%--<h1>adresse:<jsp:getProperty name="p1" property="adresse"/></h1>--%>
    <%--<h1>ville:<jsp:getProperty name="p1" property="ville"/></h1>--%>
   <%-- <h1>pays:<jsp:getProperty name="p1" property="pays"/></h1>--%>
    <br>
         </body>
</html>
