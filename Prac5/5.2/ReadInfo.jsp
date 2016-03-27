<%@ page language="java" import="java.util.*"%>
<html>
<head>
<title>Reading Requested information</title>
</head>
<body>
<%
out.println("method:"+request.getMethod()+"<br>");
out.println("getRequestURI:"+request.getRequestURI()+"<br>getProtocol:"+request.getProtocol()+"<br>getPathInfo:"+request.getPathInfo());
out.println("<br>getPathTranslated:"+request.getPathTranslated());
out.println("<br>getQueryString:"+request.getQueryString());
out.println("<br>getContentLength:"+request.getContentLength());
out.println("<br>getContentType:"+request.getContentType());
out.println("<br>getServerName:"+request.getServerName());
out.println("<br>getServerPort:"+request.getServerPort());
out.println("<br>getRemoteUser:"+request.getRemoteUser());
out.println("<br>getRemoteAddr:"+request.getRemoteAddr());
out.println("<br>getRemoteHost:"+request.getRemoteHost());
%>
</body>
</html>