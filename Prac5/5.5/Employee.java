import java.util.*;
import java.sql.*;
import javax.servlet.annotation.WebServlet;
@WebServlet("/Employee")
public class Employee
{
	public static void main(String[] args)
	{
		Connection con=null;
		Statement stmt=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbc","root","vaishali");
			stmt=con.createStatement();
			String sql="create table employeenew(id Integer,empname varchar(30));"; 
			stmt.executeUpdate(sql);
			System.out.println("Table Created....!!!");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}

