<%-- 
    Document   : Createbo
    Created on : 6 Aug, 2016, 5:20:50 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                             <spring:url value="/resources" var="img"/>
                     <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
        <title>Create Page</title>
    </head>
    <body style="margin-top: 200px;background-image: url('${img}/background2.jpg')">
        <form:form action="BoCreate" method="post" commandName="myBo">
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label> Enter the Banking Officer Code: </label> <font style="color: red;"><form:errors path="bocode"/></font>
            <form:input path="bocode" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label> Enter the Banking Officer Name: </label> <font style="color: red;"><form:errors path="boname"/></font>
            <form:input path="boname" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label> Enter the Username: </label> <font style="color: red;"><form:errors path="bouname"/></font>
            <form:input path="bouname" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label> Enter the Password: </label> <font style="color: red;"><form:errors path="bopwd"/></font>
            <form:input path="bopwd" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
                <input class="btn btn-success" type="submit" value="ADD DATA"/>
            </div>
            </form:form>
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${msg}
</p>
<form:form action="BankingOfficer" method="get">
    <div class="form-group" style="margin-left:500px;margin-right:500px">
        <input class="btn btn-danger" type="submit" value="Back"/>
    </div>
    </form:form>
