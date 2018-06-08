

<%System.out.println( "wsal l servlet insertion ");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
        <jsp:useBean id="p1" class="Beans.Humain" scope="session"/>
        <jsp:setProperty name="p1" property="*"/>
        <%--<jsp:getProperty name="p1" property="ident"/>--%>
        <jsp:getProperty name="p1" property="nom"/>
        <jsp:getProperty name="p1" property="prenom"/>
        <%--<jsp:getProperty name="p1" property="age"/>--%>
    <body>
        <form name="monform2" method="post" action="Insertion">
       <%-- <h1>prenom:<input type="text" name="prenom" value=""></h1>--%>
       
        <h1>sexe:<input type="text" name="sexe" value=""></h1>
        
        <%-- <h1>pays:<input type="text" name="pays" value=""></h1>--%>
        <%--<input id="fileinput" type="text"value="vvvv"  readonly />
        <input type="file" onKeydown="alert('Cliquez sur Parcourir');this.value=this.value;return false;"/>--%>
        <input type="submit" value="envoyer">

        </form>      
  
    </body>
    
</html>