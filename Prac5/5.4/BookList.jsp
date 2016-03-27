<%@ page language="java" import="java.sql.*"%>
<%!
Connection con;
Statement stmt;
ResultSet rs;
String un="root",up="vaishali",url="jdbc:mysql://localhost:3306/jdbc";
String ti,tb,ta;
public void jspInit()
{
    try
    {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Driver loaded");
            con=DriverManager.getConnection(url,un,up);
            System.out.println("Connected");
            stmt=con.createStatement();
            System.out.println("Wrapper Created");
            rs=stmt.executeQuery("Select * from books_detail");
    }
    catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
}
%>
<html>
    <body>
    <h1>Vaishali-1300150131524</h1>
        <table border="1">
        <th>id</th>
        <th>bookname</th>
        <th>author</th>
            <%
                try
                {
                    rs.beforeFirst();
                    while(rs.next())
                    {
                        ti=rs.getString("id");
                        tb=rs.getString("bookname");
                        ta=rs.getString("author");
                    
                    %>
            <tr>
                <td><%=ti%></td>
                <td><%=tb%></td>
                <td><%=ta%></td>
            </tr>
            <%
                }
                }
            catch(Exception e)
            {
            out.println(e.getMessage());
            }
                %>
       </table>
    </body>
</html>
