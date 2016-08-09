<%-- 
    Document   : Modifybranch
    Created on : 6 Aug, 2016, 2:58:59 PM
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
              <form:form action="BranchModify" commandName="myBranch" method="get">
            <label> Enter the Branch Code You Want to Modify : </label>
            <form:input path="bcode" />
             <label> Enter the Branch Location : </label>
            <form:input path="blocation" />
            <input type="submit" value="Validate Branch Code" />
          </form:form>
      
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="Branch" method="get">
    <input type="submit" value="Back"/>
</form:form>
    
