<%-- 
    Document   : Delete
    Created on : 4 Aug, 2016, 6:59:17 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <form:form action="ProductDelete" commandName="myProduct" method="get">
            <label> Enter the Product Code You Want to Delete : </label>
            <form:input path="pcode" />
            <input type="submit" value="Delete Data"/>
        </form:form>
        </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Product" method="get">
    <input type="submit" value="Back"/>
</form:form>

