<%-- 
    Document   : Createbo
    Created on : 6 Aug, 2016, 5:20:50 PM
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
        <form:form action="BoCreate" method="post" commandName="myBo">
            <table width="70%">
                <tr>
                    <td>
            <label> Enter the Banking Officer Code: </label>
                 </td>
                 <td>
            <form:input path="bocode"/>
               </td>
                    <td>
            <label> Enter the Banking Officer Name: </label>
                    </td>
                    <td>
            <form:input path="boname"/>
                    </td>
            </tr>
            <tr>
                <td>
            <label> Enter the Username: </label>
                </td>
                <td>
            <form:input path="bouname"/>
                </td>
                <td>
            <label> Enter the Password: </label>
                </td>
                <td>
            <form:input path="bopwd"/>
                </td>
            </tr>
            <tr>
                <td>
            <input type="submit" value="ADD DATA"/>
            </td>
            </tr>
</table>
        </form:form>
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt">
    ${msg}
</p>
<form:form action="BankingOfficer" method="get">
    <input type="submit" value="Back"/>
</form:form>
