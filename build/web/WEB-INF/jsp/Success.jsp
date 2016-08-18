<%-- 
    Document   : Success
    Created on : 28 Jul, 2016, 11:26:22 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import=" com.exam.ConnectionClass" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
            <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
           <title>Logged On!!</title>
    </head>
    <body>
      <div class="jumbotron text-center">
  <h3>!!  Available Services  !! </h3>
</div>

        <table width="100%">
            <tr>
                <td style="text-align: center;">
                    <form action="<c:url value="/Product" />">
                        <button type="submit" class="btn btn-danger">Products And Services</button>
                    </form>  
                </td>
                <td style="text-align: center;">
                    <form action="<c:url value="/Branch" />">
                    <button type="submit" class="btn btn-primary">Branches</button>
                    </form>  
                </td>
                <td style="text-align: center;">
               <form action="<c:url value="/Servicedesk" />">
                    <button type="submit" class="btn btn-success">Service Desk Counters</button>
                    </form> 
                </td>
                <td style="text-align: center;">
          <form action="<c:url value="/BankingOfficer" />">
                    <button type="submit" class="btn btn-info">Banking Officer</button>
                    </form>      
                </td>
            </tr>
        </table>
    
    </body>
</html>
