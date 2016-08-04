<%-- 
    Document   : WelcomeCust
    Created on : 2 Aug, 2016, 9:54:23 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
               
    </head>
    <body>
        <form:form action="GenTicket" method="post">
    <marquee> <h1>Welcome to GroupFund Queue Management System</h1> </marquee>
    <p style="font-family: cursive;font-size: 16pt;">Select Product/Service Interested In  : 
        <select name="Service" style="font-family: cursive;font-size: 14pt;"> 
            <option selected="selected">Select.... </option>
        
        <option>Saving Account</option>
        <option>Current Account</option>
        <option>Fixed Deposit</option>
        <option>Debit Card</option>
        <option>Credit Card</option>
        <option>Loan</option>
        
    </select>
</p>
<input type="submit" value="Generate Ticket" />
</form:form>
    </body>
</html>
<p style="font-family: inherit;font-size: 20pt;font-weight: bold; ">
    ${tno}
</p>
<table>
    <tr>
        <td><button onclick="window.print()" > Print Ticket </button> </td>
<td>
<form:form action="CentralDisplay" method="get">
<input type="submit" value="Proceed To Waiting Lounge"/>
</form:form>
</td>
   </tr>
</table>