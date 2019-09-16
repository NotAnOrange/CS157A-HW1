<%@ page import="java.sql.*"%>
<html>
<head> 
<title>JDBC Connection example</title>
<body>
</head>
<h1>JDBC Connection example</h1>
<% 
	try { 
		java.sql.Connection con;
		con = DriverManager.getConnection("jdbc:mysql://localhost/cs157a", "root", "root");
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("select * from emp");
		while(rs.next())
		{
			out.println(rs.getInt(1)+" "+rs.getString(2)+" "+rs.getInt(3)+ "<br>");
		}
		con.close();
		} 
	catch(SQLException e) { 
		out.println("SQLExceptioncaught: " +e.getMessage()); 
		} 
%> 
</body> 
</html> 