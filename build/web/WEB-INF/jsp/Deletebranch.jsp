<%-- 
    Document   : Deletebranch
    Created on : 6 Aug, 2016, 2:59:10 PM
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
        <form:form action="BranchDelete" commandName="myBranch" method="get">
            <label> Enter the Branch Code You Want to Delete : </label>
            <form:input path="bcode" />
            <input type="submit" value="Delete Data"/>
        </form:form>
        </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Branch" method="get">
    <input type="submit" value="Back"/>
</form:form>

