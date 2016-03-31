<%@ page language="java" import="java.sql.*"%>
<html>
<head>
<title>Insert Page</title>
</head>
<body>
<h6>Vaishali-1300150131524</h6>
<script>
<%
String JDBC_DRIVER = "com.mysql.jdbc.Driver";
String DB_URL = "jdbc:mysql://localhost:3306/jdbc";
String USER = "root";
String PASS = "vaishali";
Connection conn=null;
Statement stmt=null;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);
stmt = conn.createStatement();
String sql = "insert into employeenew values('"+session.getAttribute("id")+"','"+session.getAttribute("name")+"')";
int i=0;
try
{
	i=stmt.executeUpdate(sql); 
}
catch(SQLException e)
{
	e.printStackTrace();
	i=0;	
}
if(i==1)
{
%>
alert("Inserted successfully");
<%} else { %>
alert("Insert Failed!! ID already exists");<%} %>
</script>
</body>
</html>