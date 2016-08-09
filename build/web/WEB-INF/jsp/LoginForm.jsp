<%-- 
    Document   : LoginForm
    Created on : 28 Jul, 2016, 10:55:06 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Form</title>
        <script>
            function windowclose()
            {
                window.close();
                <%
                    session.invalidate();
                    %>
            }
        </script> 

    </head>
    <body>
        <table>
            <tr>
        <form:form action="LoginForm" method="post" commandName="myUser">
            <label> Enter the Username: </label>
            <form:input path="uname"/>
            <br>
            <br>
            </tr>
            <tr>
            <label> Enter the Password: </label>
            <form:password path="pwd" />
            <br>
            <br>
            </tr>
            <tr>
            <td>
            <input type="submit" value="Logon" />
            </td>
            </form:form>
            <td>
            <button onclick="windowclose()"> Exit </button>
            </td>
            </tr>
        </table>
        </body>
</html>
<c:choose>
    <c:when test="${try=='false'}">
<p style="color:red; font-family: monospace;font-size: 16pt">
    ${requestScope.msg}
</p>
    </c:when>
    
</c:choose>
