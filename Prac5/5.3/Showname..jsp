<%@ page language="java" import="java.util.*"%>
<html>
<head>
<title>showname</title>
</head>
<body>
<h2>vaishali-130050131524</h2>
Welcome:&nbsp;
<%String name=request.getParameter("username");%>
<%
out.println(""+name);
%>
</body>
</html>