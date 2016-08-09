<%-- 
    Document   : Createbranch
    Created on : 6 Aug, 2016, 2:58:21 PM
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
        <form:form action="BranchCreate" method="post" commandName="myBranch">
            <label> Enter the Branch Code: </label>
            <form:input path="bcode"/>
            <label> Enter the Branch Location: </label>
            <form:input path="blocation"/>
            <input type="submit" value="ADD DATA"/>
        </form:form>
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Branch" method="get">
    <input type="submit" value="Back"/>
</form:form>
