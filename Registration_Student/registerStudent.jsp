<%@ page import="java.sql.*" %>


<%

Connection v=null;
Statement st=null;
ResultSet rs=null;

String uname=request.getParameter("student_name");
String father=request.getParameter("father_name");
String sec=request.getParameter("section");
String Dat=request.getParameter("DoB");
String cls=request.getParameter("class_number");

try
{
Class.forName("com.mysql.jdbc.Driver");
v=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_fees", "root", "root");
st=v.createStatement();

rs= st.executeQuery("Select MAX(Student_ID) from student_details");
String pri=null;
while(rs.next())
{
pri=rs.getString(1);

}
int value=Integer.valueOf(pri);
value+=1;
String rolnum=Integer.toString(value);


String query= "Insert into student_details (Student_ID, Student_name, Father_name, Class, Section, Date_of_Birth) values('"+value+"', '" + uname + "','" + father  + "','" + cls + "','" + sec+ "','"  + Dat+"')";

st.executeUpdate(query);

session.setAttribute("rol", rolnum);
session.setAttribute("Name", uname);
response.sendRedirect("Register_Successful.jsp");


}//End of try block
catch(Exception e) 
{
out.println(e);
}
%>
