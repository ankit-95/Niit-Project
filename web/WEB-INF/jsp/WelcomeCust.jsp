<%-- 
    Document   : WelcomeCust
    Created on : 2 Aug, 2016, 9:54:23 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                  <spring:url value="/resources" var="img"/>
 
        <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
     <title>Welcome</title>
               
    </head>
    <body>
        <form:form action="GenTicket" method="post">
          <div class="jumbotron text-center">
<marquee> <h1>Welcome to GroupFund Queue Management System</h1> </marquee>
  </div>
          <table width="100%">
              <tr>
    <td style="font-family: cursive;font-size: 16pt;align-items: center;">Select Product/Service Interested In  : 
        <select name="Service" style="font-family: cursive;font-size: 14pt;"> 
            <option selected="selected">Select.... </option>
        
        <option>Saving Account</option>
        <option>Current Account</option>
        <option>Fixed Deposit</option>
        <option>Debit Card</option>
        <option>Credit Card</option>
        <option>Loan</option>
        
    </select>
</td>
<td style="align-items: center;">
    <img src="${img}/Customer.jpg" width="450px" height="200px"/>
</td>
              </tr>
          </table>
<input style="margin-left: 20px" class="btn btn-danger" type="submit" value="Generate Ticket" />
    

</form:form>
    </body>
</html>
<p style="font-family: inherit;font-size: 20pt;font-weight: bold;margin-top: 20px; margin-left: 20px; ">
    ${tno}
</p>
<table>
    <tr>
        <td><button style="margin-left: 20px;" class="btn btn-info" onclick="window.print()" > Print Ticket </button> </td>
<td>
<form:form action="CentralDisplay" method="get">
<input style="margin-left: 40px;" class="btn btn-info" type="submit" value="Proceed To Waiting Lounge"/>
</form:form>
</td>
   </tr>
</table>