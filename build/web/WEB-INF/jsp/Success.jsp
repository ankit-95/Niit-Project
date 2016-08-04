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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged On!!</title>
    </head>
    <body>
        <table border="1" width="100%">
            <tr>
                <th>
                    <a href="<c:url value='/Product'/>">Products And Services</a>
                </th>
                <th>
                    Branches
                </th>
                <th>
                    Service Desk Counters
                </th>
                <th>
                    Banking Officers
                </th>
            </tr>
        </table>
    
    </body>
</html>
