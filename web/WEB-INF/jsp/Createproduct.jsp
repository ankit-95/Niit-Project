<%-- 
    Document   : Create
    Created on : 4 Aug, 2016, 4:07:04 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <form:form action="ProductCreate" method="post" commandName="myProduct">
            <label> Enter the Product Code: </label>
            <form:input path="pcode"/>
            <label> Enter the Product Description: </label>
            <form:input path="pdesp"/>
            <input type="submit" value="ADD DATA"/>
        </form:form>
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Product" method="get">
    <input type="submit" value="Back"/>
</form:form>
