<%-- 
    Document   : SuccessBank
    Created on : 9 Aug, 2016, 3:51:06 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                           <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
      <title>Logged On!!!!</title>
    </head>
    <body>
        <form:form action="BankInc" method="get">
            <input style="margin-top: 100px;margin-left: 200px;" class="btn btn-danger" type="submit" value="Delete From Queue" />
        </form:form>
    
    </body>
</html>

<c:choose>

    <c:when test="${requestScope.msg=='Queue is Empty.'}">
    <p style="font-family: cursive;font-size: 14pt;margin-left: 200px;">
    ${msg}
</p>
     
    </c:when>
<c:otherwise>
   
    <p style="font-family: cursive;font-size: 14pt;margin-left: 200px;">
        ${msg}
</p>
   
</c:otherwise>
</c:choose>
