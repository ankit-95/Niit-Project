<%-- 
    Document   : Modifysd
    Created on : 15 Aug, 2016, 5:45:52 PM
    Author     : ANKIT
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
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
              <form:form action="SDModify" commandName="mySD" method="get">
            <div class="form-group" style="margin-left:500px;margin-right:500px">

                  <label> Enter the Service Desk Number You Want to Modify : </label>
                  <form:input path="sno" cssClass="form-control"/>
            </div>
            <div class="form-group" style="margin-left:500px;margin-right:500px">

                <input class="btn btn-warning" type="submit" value="Validate Service Desk Number" />
            </div>
          </form:form>
      
    </body>
</html>
<c:choose>
      <c:when test="${msg=='Record Does Not Exist.'}">
        <p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${msg}
</p>
     </c:when>
<c:when test="${msg=='Exist'}">
    <form:form action ="updateSD" commandName="mySD" method="get">
        <form:hidden path="sno"/>
        <div class="form-group" style="margin-left:500px;margin-right:500px">

        <label> Enter the Branch Code: </label>
        <form:input path="bcode" cssClass="form-control"/> 
        </div>
        <div class="form-group" style="margin-left:500px;margin-right:500px">

            <input class="btn btn-success" type="submit" value="Modify"/>
        </div>
        </form:form>
</c:when>
</c:choose>

      <p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${tt}
</p>
<form:form action="Servicedesk" method="get">
    <div class="form-group" style="margin-left:500px;margin-right:500px">

        <input class="btn btn-danger" type="submit" value="Back"/>
    </div>
    </form:form>
