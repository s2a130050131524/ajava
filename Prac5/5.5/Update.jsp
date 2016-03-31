<%@page import="java.sql.*"%>
<%@ page language="java"%>
<html>
<head>
<title>Update page</title>
</head>
<body>
<h6>Vaishali-1300150131524</h6>
<%
String JDBC_DRIVER = "com.mysql.jdbc.Driver";
String DB_URL = "jdbc:mysql://localhost:3306/jdbc";
String USER = "root";
String PASS = "vaishali";
Connection conn=null;
Statement stmt=null;
int i=1;
try
{
	Class.forName(JDBC_DRIVER);
	conn = DriverManager.getConnection(DB_URL, USER, PASS);
	stmt = conn.createStatement();
	String sql = "update employeenew set empname='"+session.getAttribute("name")+"' where id="+session.getAttribute("id");
	i=stmt.executeUpdate(sql); 
}
catch(Exception e)
{
	i=0;
}
if(i==1)
{
%> <script>alert("Modified Successfully");</script><%} else { %><script>alert("ID does not exist");</script><%} %>
</body>
</html>