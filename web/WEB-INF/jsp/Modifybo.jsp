<%-- 
    Document   : Modifybo
    Created on : 6 Aug, 2016, 5:21:08 PM
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
              <form:form action="BoModify" commandName="myBo" method="get">
            <label> Enter the Banking Officer Code You Want to Modify : </label>
            <form:input path="bocode" />
            <p>
                Select the Information you want to Change : 
            </p>
            <form:checkbox path="bohelp" value="boname"/>Banking Officer Name
            <form:checkbox path="bohelp" value="bouname"/>Username
            <form:checkbox path="bohelp" value="bopwd"/>Password
            <br> 
            <br> 
            <input type="submit" value="Validate Banking Officer Code" />
          </form:form>
      
    </body>
</html>
<c:choose>
    <c:when test="${msg=='boname'}">
        <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                <label> Enter the Banking Officer Name : </label>
                <form:input path="boname"/>
                <input type="submit" value="Modify"/>
                </form:form>
              </p>
    </c:when>
        <c:when test="${msg=='bouname'}">
     <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                3
                <label> Enter the Banking Officer Username : </label>
                <form:input path="bouname"/>
                  <input type="submit" value="Modify"/>
              
                </form:form>
              </p>
    </c:when><c:when test="${msg=='bopwd'}">
     <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                <label> Enter the Banking Officer Password : </label>
                <form:input path="bopwd"/>
                  <input type="submit" value="Modify"/>
              
                </form:form>
              </p>
    </c:when>
        <c:when test="${msg=='Record Does Not Exist.'}">
        <p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
     </c:when>
        </c:choose>
 
       <p style="font-family: cursive;font-size: 14pt">
    ${tt}
</p>
 
               <br>
<form:form action="BankingOfficer" method="get">
    <input type="submit" value="Back"/>
</form:form>
    
    