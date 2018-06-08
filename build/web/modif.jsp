

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="actionmofif.jsp" method="post">
            <h1>veuillez entrer l'id a rechercher: <input type="text" name="id" value=""></h1>
            <h1>veuillez entrer le nouveau nom : <input type="text" name="nom" value=""></h1>
            <%-- <h1>veuillez entrer l'id a rechercher: <input type="text" name="id" value=""></h1>
            <h1>veuillez entrer l'id a rechercher: <input type="text" name="id" value=""></h1>
            <h1>veuillez entrer l'id a rechercher: <input type="text" name="id" value=""></h1>
            <h1>veuillez entrer l'id a rechercher: <input type="text" name="id" value=""></h1>--%>
            <input type="submit" name="rechercher" value="modifier">
        </form>
    </body>
</html>
