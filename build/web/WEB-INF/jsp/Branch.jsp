<%-- 
    Document   : Branch
    Created on : 6 Aug, 2016, 1:13:20 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                         <spring:url value="/resources" var="img"/>
                     <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
   <title>Branches</title>
    </head>
    <body style="color: #666600;background-image: url('${img}/background2.jpg');">
        <h1>
          Branches Are : 
        </h1>
        <table border="1" width="100%" class="table table-bordered"> 
            <thead>
                <tr>
            <th>
                    Branch Code
                </th>
                <th>
                    Branch Description
                </th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
            <c:forEach var="p1" items="${Branch1}">
                ${p1}<br>
            </c:forEach>
                    </td>
                    <td>
                <c:forEach var="p2" items="${Branch2}">
                    ${p2}<br>
            </c:forEach>
                   </td>
            </tr>
            </tbody>
        </table>
        
        <br>
        <form:form action="BranchCreate" method="get" >
            <input class="btn btn-info" type="submit" name="btn1" value="Create"/>
            <input class="btn btn-warning" type="submit" name="btn1" value="Modify"/>
            <input class="btn btn-danger" type="submit" name="btn1" value="Delete"/>
            
        </form:form>

        <br>
            <form:form  action="LoginForm" method="post">
                <input class="btn btn-primary" type="submit" value="Logout"  />
            </form:form>
        
    </body>
</html>
