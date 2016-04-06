<%@ page language="java"%>
<html>
    <head>
        <title>JSP Response</title>
    </head>
    <body>
        <h4>Enrollment No:130050131524</h4>
        <h4>Testing Response object</h4>
    
    <%
        Boolean x=response.isCommitted();
        if(x==true){
            out.println("Response is committed");
        }
        else{
            out.println("Response is not committed");
            
        }
    %>
    </body>
</html>
