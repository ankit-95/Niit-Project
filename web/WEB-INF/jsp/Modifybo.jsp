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
              <form:form action="BoModify/${myBo.bocode}" commandName="myBo" method="get">
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
          <p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
                <br>
<form:form action="BankingOfficer" method="get">
    <input type="submit" value="Back"/>
</form:form>
    
