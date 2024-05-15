<%-- 
    Document   : Visitante
    Created on : 14 may. 2024, 19:29:52
    Author     : Alan DoubleEight4
--%>


<%
String cookieName = "visitorName";
String visitorName = "";
Cookie[] cookies = request.getCookies();
boolean existeCookie = false;
    for (Cookie cookie : cookies){
        if (cookieName.equals(cookie.getName())){
            existeCookie = true;
            visitorName = cookie.getValue();
        }
    }
    if(!existeCookie){
        response.sendRedirect("Inicio.jsp");
    }
%>   
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head> 
        <meta http-equiv="content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido Visitante</title>
    </head> 
    <body>
        <h1>Hola <%=visitorName%></h1>
    </body>
</html>