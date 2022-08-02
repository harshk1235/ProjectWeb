<%@ page import="java.sql.*" %>
<%
String cashier=(String)session.getAttribute("cashier");
String stu_id=(String)session.getAttribute("stu_id");

%>

<html>
<head>
    <title>Total Fee</title>
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
                <h1>Total Fee </h1><br>

                <span>  
                <%
                    out.println("Total Fee Paid by Student with ID:- "+stu_id+" ! is ");
                %> 
                </span>
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
                rs= st.executeQuery("Select * from total_fees where Stud_ID='"+stu_id+"'");;
                while(rs.next())
                { 
                    out.println(rs.getString(2));
                }
                
                }//End of try
                catch(Exception e) 
                {
                out.println(e);
                }
                %>

                <br>
                <br>
                
                <span>  <a href="../Final_Landing.jsp"> Student Portal</a> </span>
                
            </div>
        </div>
    </main>
</body>

</html>

