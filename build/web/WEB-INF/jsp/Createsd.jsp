<%-- 
    Document   : Createsd
    Created on : 15 Aug, 2016, 5:45:39 PM
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
        <form:form action="SDCreate" method="post" commandName="mySD">
            <label> Enter the Service Desk Number: </label>
            <form:input path="sno"/>
            <label> Enter the Branch Code: </label>
            <form:input path="bcode"/>
            <input type="submit" value="ADD DATA"/>
        </form:form>
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Servicedesk" method="get">
    <input type="submit" value="Back"/>
</form:form>
