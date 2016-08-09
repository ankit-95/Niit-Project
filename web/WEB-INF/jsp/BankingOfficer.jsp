<%-- 
    Document   : BankingOfficer
    Created on : 6 Aug, 2016, 4:13:19 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banking Officers</title>
    </head>
    <body>
        <h1>
          Banking Officers Are : 
        </h1>
        <table border="1" width="100%"> 
            <th>
                    Banking Officer Code
                </th>
                <th>
                    Banking Officer Name
                </th>
                <th>
                   Username
                </th>
                <th>
               Password
                </th>
                
                <tr>
                    <td>
            <c:forEach var="p1" items="${Bo1}">
                ${p1}<br>
            </c:forEach>
                    </td>
                    <td>
                <c:forEach var="p2" items="${Bo2}">
                    ${p2}<br>
            </c:forEach>
                   </td>
                    <td>
                <c:forEach var="p3" items="${Bo3}">
                    ${p3}<br>
            </c:forEach>
                   </td>
                    <td>
                <c:forEach var="p4" items="${Bo4}">
                    ${p4}<br>
            </c:forEach>
                   </td>
           
                </tr>
        </table>
                <br>
        <br>
        <form:form action="BoCreate" method="get" >
            <input type="submit" name="btn1" value="Create"/>
            <input type="submit" name="btn1" value="Modify"/>
            <input type="submit" name="btn1" value="Delete"/>
            
        </form:form>
    <br>
            <form:form  action="LoginForm" method="post">
                <input type="submit" value="Logout"  />
            </form:form>
        
    </body>
</html>
