<%@ page language="java" contentType="text/html"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%String name=request.getParameter("name");
String no=request.getParameter("enroll");
session.setAttribute("name", name);
session.setAttribute("enroll", no);
response.sendRedirect("Sessionget1.jsp");%>
</body>
</html>