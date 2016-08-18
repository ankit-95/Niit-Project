<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html>
    <head>
                 <spring:url value="/resources" var="img"/>
            <spring:url value="/resources/bootstrap.min.css" var="bootCSS"/>
            <link href="${bootCSS}" rel="stylesheet"/>
     <meta name="viewport" content="width=device-width, initial-scale=1"> 
         <title> Start Page</title>
    </head>
    <body style="background-image: url('${img}/background1.jpg');">
        <div class="jumbotron text-center">
  <h1>Welcome to Groupfund Banking System</h1>
</div>

        <div class="container"> 

     <div class="row">
         <div class="col-sm-4" style="text-align: center">
               <form action="<c:url value="/LoginForm" />">
                    <button style="background-color:#00b33c;" type="submit" class="btn bg-primary">Administrator</button>
                    </form>
    </div>
    <div class="col-sm-4" style="text-align: center">
                    <form action="<c:url value="/LoginBank" />">
                        <button  style="background-color:#00b33c;" type="submit" class="btn btn-primary">Banking Officer</button>
                    </form>
      </div>
    <div class="col-sm-4" style="text-align: center">
               <form action="<c:url value="/WelcomeCust" />">
                   <button style="background-color:#00b33c;" type="submit" class="btn btn-primary">Customer</button>
                    </form>
    </div>
  </div>
</div>
        </body>
</html>