<%-- 
    Document   : SuccessBank
    Created on : 9 Aug, 2016, 3:51:06 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged On!!!!</title>
    </head>
    <body>
        <form:form action="BankInc" method="get">
            <input type="submit" value="Delete From Queue" />
        </form:form>
    
    </body>
</html>

<c:choose>

    <c:when test="${requestScope.msg=='Queue is Empty.'}">
    <p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
     
    </c:when>
<c:otherwise>
   
    <p style="font-family: cursive;font-size: 14pt">
        ${msg}
</p>
   
</c:otherwise>
</c:choose>
