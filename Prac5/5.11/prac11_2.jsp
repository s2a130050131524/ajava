<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
<head>
<title>Information</title>
</head>
<body>
 
<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/jdbc"
     user="root"  password="vaishali"/>

<%
Date DoB = new Date("2001/09/12");
int studentId = 103;
%>
 
<sql:update dataSource="${con}" var="count">
   UPDATE students SET dob = ? WHERE empid = ?
   <sql:dateParam value="<%=DoB%>" type="DATE" />
   <sql:param value="<%=studentId%>" />
</sql:update>
 
<sql:query dataSource="${con}" var="result">
   SELECT * from students;
</sql:query>
 
<table border="1">
<tr>
   <th>Emp ID</th>
   <th>First Name</th>
   <th>Last Name</th>
   <th>DoB</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
   <td><c:out value="${row.empid}"/></td>
   <td><c:out value="${row.firstname}"/></td>
   <td><c:out value="${row.lastname}"/></td>
   <td><c:out value="${row.dob}"/></td>
</tr>
</c:forEach>
</table>
 
</body>
</html>