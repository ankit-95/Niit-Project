    <%-- 
    Document   : LoginBank
    Created on : 9 Aug, 2016, 3:46:50 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form"  prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Login Page</title>
    </head>
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
        <form:form action="LoginBank" method="post" commandName="myBo">
            <label> Enter the Username: </label>
            <form:input path="bouname"/>
            <br>
            <br>
            </tr>
            <tr>
            <label> Enter the Password: </label>
            <form:password path="bopwd" />
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
