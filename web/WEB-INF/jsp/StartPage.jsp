<%--
Views should be stored under the WEB-INF folder so that
they are not accessible except through controller process.

This JSP is here to provide a redirect to the dispatcher
servlet but should be the only JSP outside of WEB-INF.
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
    <head>
        <title> Start Page</title>
    </head>
    <body>
        <table width="100%">
            <tr>
                <th>
                    <a href="<c:url value='/LoginForm'/>"> Administrator </a>
                </th>
                <th>
                Banking Officer
                </th>
                <th>
                    <a href="<c:url value='/WelcomeCust'/>">Customer</a>
                </th>
                    
            </tr>
        </table>
    </body>
</html>