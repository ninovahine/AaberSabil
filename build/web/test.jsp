
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Beans.Etat_compte2"%>
<%@page import="Servlets.etat_compte2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <forme action="etat_compte2" methode="post" >
        <input style="submit" value="test jsp"/>
        
        
        
        
    </forme>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <%--  <li class="nav-item"><a class="nav-link smooth-scroll" href="${pageContext.request.contextPath}/etat_compte2" >Bloquer Compte</a></li>
       <form role="form" action="${pageContext.request.contextPath}/etat_compte2" method="post">
           <c:forEach var="i" begin="1" end="liste.size()"step="1">  
           <%etat_compte2 =new etat_compte2();
               for(int i=0;i>k.liste.size();i++)%>
									<input type="hidden" name="Hote_id"
										value="<%=k.liste.get(i).getEmail()%>" /> 
									<div class="form-group">
						<div class="col-sm-offset-3 col-sm-10">
											<button type="submit" class="btn btn-info">Confirmer</button>
											<button type="button" class="btn btn-default" data-dismiss="modal">Annuler	</button>
										</div>
				</div></c:forEach>
								</form>
    --%>
    </body>
</html>
