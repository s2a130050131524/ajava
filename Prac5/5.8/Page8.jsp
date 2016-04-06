<%@ page language="java"%>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
         <h3>Enrollment No:130050131524</h3>
         <h3>Testing page object</h3>
         <%
            out.print(((Servlet)page).getServletInfo());
          %>
    </body>
</html>
