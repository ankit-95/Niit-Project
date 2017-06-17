<%-- 
    Document   : Modifybo
    Created on : 6 Aug, 2016, 5:21:08 PM
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
              <form:form action="BoModify" commandName="myBo" method="get">
                  <div class="form-group" style="margin-left:500px;margin-right:500px">
                  <label> Enter the Banking Officer Code You Want to Modify : </label> <font style="color: red;"><form:errors path="bocode"/></font>
                  <form:input path="bocode" cssClass="form-control"/>
                  </div>
            <p>
                <div class="form-group" style="margin-left:500px;margin-right:500px">
                    <label> Select the Information you want to Change : </label>
                </div>
            </p>
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <form:checkbox path="bohelp" value="boname"/>Banking Officer Name
            <form:checkbox path="bohelp" value="bouname"/>Username
            <form:checkbox path="bohelp" value="bopwd"/>Password
            </div>
            <br> 
            <br> 
            <div class="form-group" style="margin-left:500px;margin-right:500px">
                <input class="btn btn-warning" type="submit" value="Validate Banking Officer Code" />
            </div>
          </form:form>
      
    </body>
</html>
<c:choose>
    <c:when test="${msg=='boname'}">
        <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                <div class="form-group" style="margin-left:500px;margin-right:500px">
                <label> Enter the Banking Officer Name : </label> <font style="color: red;"><form:errors path="boname"/></font>
                <form:input path="boname"/>
                <input class="btn btn-success" type="submit" value="Modify"/>
                </div>
                </form:form>
              </p>
    </c:when>
        <c:when test="${msg=='bouname'}">
     <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                <div class="form-group" style="margin-left:500px;margin-right:500px">
                <label> Enter the Banking Officer Username : </label> <font style="color: red;"><form:errors path="bouname"/></font>
                <form:input path="bouname"/>
                <input class="btn btn-success" type="submit" value="Modify"/>
                </div>
                </form:form>
              </p>
    </c:when><c:when test="${msg=='bopwd'}">
     <p> 
            <form:form action="updateBO" commandName="myBo" method="get">
                <form:hidden path="bocode"/>
                <form:hidden path="bohelp"/>
                <div class="form-group" style="margin-left:500px;margin-right:500px">
                <label> Enter the Banking Officer Password : </label> <font style="color: red;"><form:errors path="bopwd"/></font>
                <form:input path="bopwd"/>
                <input class="btn btn-success" type="submit" value="Modify"/>
                </div>
                </form:form>
              </p>
    </c:when>
        <c:when test="${msg=='Record Does Not Exist.'}">
        <p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${msg}
</p>
     </c:when>
        </c:choose>
 
       <p style="font-family: cursive;font-size: 14pt;margin-left: 500px;">
    ${tt}
</p>
 
               <br>
<form:form action="BankingOfficer" method="get">
    <div class="form-group" style="margin-left:500px;margin-right:500px">
        <input class="btn btn-danger" type="submit" value="Back"/>
    </div>
    </form:form>
    
    