<%@ page import="java.sql.*" %>


<html>
<head>
    <title>Strength</title>
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
                    out.println("Total Student Strength in School is :-");
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
                rs= st.executeQuery("Select MAX(Student_ID) from student_details");
                
                while(rs.next())
                {
                out.println(rs.getString(1)); 

                }
                }//End of try
                catch(Exception e) 
                {
                out.println(e);
                }
                %>

                <br>
                <br>
                
                <span>  <a href="admin_features.html"> Admin Portal</a> </span>
                
            </div>
        </div>
    </main>
</body>

</html>

