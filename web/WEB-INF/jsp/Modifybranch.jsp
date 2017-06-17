<%-- 
    Document   : Modifybranch
    Created on : 6 Aug, 2016, 2:58:59 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib  uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
      <spring:url value="/resources" var="img"/>
      <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
    <title>Modify Page</title>
    </head>
    <body style="margin-top: 200px;background-image: url('${img}/background2.jpg');">
              <form:form action="BranchModify" commandName="myBranch" method="get">
             <div class="form-group" style="margin-left:500px;margin-right:500px">
   
            <label> Enter the Branch Code You Want to Modify : </label> <font style="color: red;"><form:errors path="bcode"/></font>
            <form:input path="bcode" cssClass="form-control"/>
             </div>
                      <div class="form-group" style="margin-left:500px;margin-right:500px">
   
            <label> Enter the Branch Location : </label> <font style="color: red;"><form:errors path="blocation"/></font>
            <form:input path="blocation" cssClass="form-control"/>
                      </div>
                               <div class="form-group" style="margin-left:500px;margin-right:500px">
   
                                   <input class="btn btn-success"type="submit" value="Validate Branch Code" />
                               </div>
                               </form:form>
      
    </body>
</html>
<p style="font-family: cursive;font-size: 14pt;margin-left:500px">
    ${msg}
</p>
<form:form action="Branch" method="get">
                               <div class="form-group" style="margin-left:500px;margin-right:500px">
    
                                   <input class="btn btn-danger" type="submit" value="Back"/>
                               </div>
                               </form:form>
    
