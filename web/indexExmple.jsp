
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="monform" method="post" action="mypage.jsp">
        <%--<h1>ident:<input type="text" name="ident" value="" ></h1>--%>
        <h1>nom:<input type="text" name="nom" value=""></h1>
        <h1>prenom:<input type="text" name="prenom" value=""></h1>
       <%--<h1>age:<input type="text" name="age" value=""></h1>--%>
        <input type="submit" value="envoyer">
        </form>
    </body>
</html>

