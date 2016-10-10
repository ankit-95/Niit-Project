<%-- 
    Document   : centralDisplay
    Created on : 3 Aug, 2016, 12:33:54 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                     <spring:url value="/resources" var="img"/>
       
        <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
            <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
   <title>Central Display</title>
    </head>
    <body style="background-image: url('${img}/background2.jpg');">
       
              <div class="jumbotron text-center">
                  <h3 style="color: red;">Central Display</h3>
</div>
   <% response.setIntHeader("Refresh",10);
        %>
        <c:choose>
            <c:when test="${Array=='Queue is Empty'}">
                <p style="text-align: center;font-size: 16pt;font-family:inherit;">
                    ${Array}
                </p>
            </c:when>
            <c:otherwise>
        <c:forEach var="i"  begin="0" end="4" step="1" items="${Array}">
            <p style="text-align: center;font-size: 16pt;font-family:inherit;">
                 ${i} <br>
            </p> 
        </c:forEach>
   
            </c:otherwise>
        </c:choose>
    </body>
</html>
