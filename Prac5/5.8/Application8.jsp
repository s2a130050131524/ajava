<%@ page language="java"%>
<html>
    <head>
        <title>JSP Application</title>
    </head>
    <body>
       <h4>Enrollment No:130050131524</h4>
       <h4>Testing Application object</h4>
        <%
            application.setAttribute("abc","xyz");
            out.println(application.getAttribute("abc"));
        %>
    </body>
</html>
