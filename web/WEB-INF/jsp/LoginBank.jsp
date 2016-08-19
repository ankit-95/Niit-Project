    <%-- 
    Document   : LoginBank
    Created on : 9 Aug, 2016, 3:46:50 PM
    Author     : ANKIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://www.springframework.org/tags/form"  prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
    <head>
                    <spring:url value="/resources" var="img"/>
              <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
         <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
   
     <title> Login Page</title>
    </head>
   <script>
            function windowclose()
            {
                window.close();
                <%
                    session.invalidate();
                    %>
            }
        </script> 

    </head>
    <body style="margin-top: 200px;background-image: url('${img}/background2.jpg');">
        <form:form action="LoginBank" method="post" commandName="myBo">
            <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label>Enter the Username : </label>
            <form:input path="bouname" cssClass="form-control"/>
        </div>
        <div class="form-group" style="margin-left:500px;margin-right:500px">
            <label>Enter the Password : </label>
            <form:input path="bopwd" cssClass="form-control"/>
        </div>
        <span>
            <button class="btn btn-info" style="margin-left: 500px;" >Login</button>
        </span> 
        <span>
        <button class="btn btn-info" onclick="windowclose()"> Exit </button>
        </span>
        </form:form> 
        </body>
</html>
<c:choose>
    <c:when test="${try=='false'}">
<p style="color:red; font-family: monospace;font-size: 16pt;margin-left: 450px;">
    ${requestScope.msg}
</p>
    </c:when>
    
</c:choose>
