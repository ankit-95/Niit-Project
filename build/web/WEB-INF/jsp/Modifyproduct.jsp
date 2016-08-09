<%-- 
    Document   : Modify
    Created on : 5 Aug, 2016, 10:38:44 AM
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
              <form:form action="ProductModify" commandName="myProduct" method="get">
            <label> Enter the Product Code You Want to Modify : </label>
            <form:input path="pcode" />
             <label> Enter the Product Description : </label>
            <form:input path="pdesp" />
            <input type="submit" value="Validate Product Code" />
          </form:form>
      
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Product" method="get">
    <input type="submit" value="Back"/>
</form:form>
    
