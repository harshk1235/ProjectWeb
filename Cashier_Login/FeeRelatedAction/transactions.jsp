<%@ page import="java.sql.*" %>
<%
String cashier=(String)session.getAttribute("cashier");
String stu_id=(String)session.getAttribute("stu_id");

%>

<html>
<head>
    <title>Transactions</title>
    <link rel="stylesheet" href="../../styles.css">
</head>


<body>
    <main>
        <div class="float-child left">
            <div class="logo"><a href="../../index.html">
                <img class="logo-img" src="../../MySchoolDesign.jpeg" alt="">
					</a>
            </div>
        </div>
        <div class="float-child right">
            <div class="form">
                <h1>Transactions </h1><br>

                <span>  
                <%
                    out.println("Student ID:- "+stu_id+" has the following Fee transactions ");
                %> 
                </span>
                <br>
                <br>
                <%
                Connection v=null;
                Statement st=null;
                ResultSet rs=null;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                v=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_fees", "root", "root");
                st=v.createStatement();
                rs= st.executeQuery("Select * from fee_deposited_details where Stud_ID='"+stu_id+"'");;
                out.println("<table border=1>");
                out.println("<tr><td> Date of transaction </td><td> Amount Paid</td><td> Mode of transaction </td></tr>");
                while(rs.next())
                { 
                out.println("<tr><td>"+rs.getString(2)+ "</td><td>" +rs.getString(3)+"</td><td> CASH  </td></tr>");
                }
                out.println("</table>");
                }//End of try
                catch(Exception e) 
                {
                out.println(e);
                }
                %>

                <br>
                <br>
                <span> Want to Pay fee ? <a href="pay_fee.jsp">Pay</a></span>
                <br>
                <br>
                <span>  <a href="../Final_Landing.jsp"> Student Portal</a> </span>
                
            </div>
        </div>
    </main>
</body>

</html>

