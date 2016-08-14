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
        <table  width="50%">
            <tr>
                <th>
                    <form action="<c:url value="/Product" />">
                    <button type="submit">Products And Services</button>
                    </form>  
                </th>
                <th>
                    <form action="<c:url value="/Branch" />">
                    <button type="submit">Branches</button>
                    </form>  
                </th>
                <th>
               <form action="<c:url value="/Servicedesk" />">
                    <button type="submit">Service Desk Counters</button>
                    </form> </th>
                <th>
          <form action="<c:url value="/BankingOfficer" />">
                    <button type="submit">Banking Officer</button>
                    </form>      </th>
            </tr>
        </table>
    
    </body>
</html>
