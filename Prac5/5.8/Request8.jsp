<%@ page language="java"%>
<html>
    <head>
        <title>JSP Request</title>
    </head>
    <body>
        <h4>Enrollment No:130050131524</h4>
        <form method="GET">
            <center>
                Name:<input type="text" name="name" value="Enter Name"/><br/><br/>
                <input type="submit" value="Submit">
            </center>
        </form>
        <%
            out.print(request.getParameter("name"));
        %>
    </body>
</html>
