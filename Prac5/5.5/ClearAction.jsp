<%@page import="java.sql.*"%>
<%@ page language="java"%>
<html>
<head>
<title>Delete Page</title>
</head>
<body>
<h6>Vaishali-1300150131524</h6>
<script>
<%final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
final String DB_URL = "jdbc:mysql://localhost:3306/jdbc";
final String USER = "root";
final String PASS = "vaishali";
Connection conn;
Statement stmt;
Class.forName(JDBC_DRIVER);
conn = DriverManager.getConnection(DB_URL, USER, PASS);
stmt = conn.createStatement();
String sql = "delete from employeenew where id="+session.getAttribute("id");
int i;
try{
i=stmt.executeUpdate(sql); 
}catch (Exception e){
	i=0;
}
if(i==1)
{
%>alert("Deleted Successfully");<%} else { %>alert("Deletion failed!!! ID DOES NOT EXIST");<%} %>
</script>
</body>
</html>