<%-- 
    Document   : Modifysd
    Created on : 15 Aug, 2016, 5:45:52 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Page</title>
    </head>
    <body>
              <form:form action="SDModify" commandName="mySD" method="get">
            <label> Enter the Service Desk Number You Want to Modify : </label>
            <form:input path="sno" />
            <input type="submit" value="Validate Service Desk Number" />
          </form:form>
      
    </body>
</html>
<c:choose>
      <c:when test="${msg=='Record Does Not Exist.'}">
        <p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
     </c:when>
<c:when test="${msg=='Exist'}">
    <form:form action ="updateSD" commandName="mySD" method="get">
        <form:hidden path="sno"/>
        <label> Enter the Branch Code: </label>
        <form:input path="bcode"/> 
        <input type="submit" value="Modify"/>
    </form:form>
</c:when>
</c:choose>

      <p style="font-family: cursive;font-size: 14pt">
    ${tt}
</p>
<form:form action="Servicedesk" method="get">
    <input type="submit" value="Back"/>
</form:form>
