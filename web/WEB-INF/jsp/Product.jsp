<%-- 
    Document   : Product
    Created on : 4 Aug, 2016, 12:45:56 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Products</title>
    </head>
    <body>
        <h1>
          Products Are : 
        </h1>
        <table border="1" width="100%"> 
            <th>
                    Product Code
                </th>
                <th>
                    Product Description
                </th>
                <tr>
                    <td>
            <c:forEach var="p1" items="${Product1}">
                ${p1}<br>
            </c:forEach>
                    </td>
                    <td>
                <c:forEach var="p2" items="${Product2}">
                    ${p2}<br>
            </c:forEach>
                   </td>
            </tr>
        </table>
        
        <br>
        <br>
        <form:form action="ProductCreate" method="get" >
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
