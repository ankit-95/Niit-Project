<%-- 
    Document   : centralDisplay
    Created on : 3 Aug, 2016, 12:33:54 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Central Display</title>
    </head>
    <body>
        <% response.setIntHeader("Refresh",10);
        %>
        <c:forEach var="i"  begin="0" end="4" step="1" items="${Array}">
            <p> ${i} <br>
            </p> 
        </c:forEach>
    </body>
</html>
