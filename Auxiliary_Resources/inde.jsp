<%@ page import="java.sql.*" %>
<%
Connection con=null;
ResultSet rs=null;
Statement st=null;
try{
Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test_drive_hyundai", "root", "root");
st=con.createStatement();
rs= st.executeQuery("Select * from test_creta");
out.println("<table border=1>");
while(rs.next())
{ 
out.println("<tr><td>"+rs.getString(1)+ "</td><td>" +rs.getString(2)+"</td><td> "+rs.getString(3)+"</td></tr>");
}
out.println("</table>");
}//End of try
catch(Exception e) 
{
out.println(e);
}
%>
