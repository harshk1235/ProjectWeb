<%@ page import="java.sql.*" %>

<%
Connection con=null;
ResultSet rs=null;
Statement st=null;


String cashier=request.getParameter("user");
String p=request.getParameter("p1");

try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_fees", "root", "root");
st=con.createStatement();
String query="Select * from login_details where username='admin' and password='"+p+"'";
rs= st.executeQuery(query);


if(rs.next())
{
response.sendRedirect("admin_features.html");
}
else
{
response.sendRedirect("error.html");
}

}//End of try
catch(Exception e)
{
out.println(e);
}
%>