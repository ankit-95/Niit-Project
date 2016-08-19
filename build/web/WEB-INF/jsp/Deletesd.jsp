<%-- 
    Document   : Deletesd
    Created on : 15 Aug, 2016, 5:46:00 PM
    Author     : ANKIT
--%>

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
        <title>Delete Page</title>
    </head>
    <body style="margin-top: 200px;background-image: url('${img}/background2.jpg');">
        <form:form action="SDDelete" commandName="mySD" method="get">
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label> Enter the Service Desk Number You Want to Delete : </label>
            <form:input path="sno" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
                <input class="btn btn-success" type="submit" value="Delete Data"/>
            </div>
        </form:form>
        </body>
</html>
<p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${msg}
</p>
<form:form action="Servicedesk" method="get">
    <div class="form-group" style="margin-left:500px;margin-right:500px">
        <input class="btn btn-danger" type="submit" value="Back"/>
    </div>
</form:form>

