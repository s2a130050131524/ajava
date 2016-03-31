<%@ page language="java"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<h6>Vaishali-1300150131524</h6>
<% String name, id,choice;
 name = request.getParameter("empname");
 id=request.getParameter("id");
 session.setAttribute("id", id);
 session.setAttribute("name", name);
 choice=request.getParameter("selection");
 if(choice.equals("insert"))
	 response.sendRedirect("JspinsertAction.jsp");
	 
 	if(choice.equals("modify"))
	 response.sendRedirect("Update.jsp");
	
	 
	 if(choice.equals("delete"))
	 response.sendRedirect("ClearAction.jsp");
 %>	
</body>
</html>