<%@ page import="java.sql.*" %>
<%
String cashier=(String)session.getAttribute("cashier");
String stu_id=(String)session.getAttribute("stu_id");
String amount=(String)request.getParameter("amt");
String asdf=(String)request.getParameter("ddate");


    Connection v=null;
    Statement st=null;
    ResultSet rs=null;
    try
    {
    Class.forName("com.mysql.jdbc.Driver");
    v=DriverManager.getConnection("jdbc:mysql://localhost:3306/school_fees", "root", "root");
    st=v.createStatement();

    String query="Insert into fee_deposited_details values('"+stu_id+"', '" + asdf + "','" + amount  + "','" + cashier + "')";
    st.executeUpdate(query);

    rs= st.executeQuery("Select * from total_fees where Stud_ID='"+stu_id+"'");
    
    if(rs.next())
    { 
        String pri=null;
        pri=rs.getString(2);
        int value=Integer.valueOf(pri);
        value+=Integer.valueOf(amount);
        String newAmt=Integer.toString(value);
        query="UPDATE total_fees SET Total_fees= '"+newAmt+"' WHERE Stud_id='"+stu_id+"'" ;
        st.executeUpdate(query);
    }
    else{
        query="Insert into total_fees values('"+stu_id+"'"+amount+"')";
        st.executeUpdate(query);

    }
    }
    
    catch(Exception e) 
    {
        out.println(e);
    }
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
                <h1>Fee Paid Successfully </h1>
                <br>
                <br>
                <span> See your <a href="transactions.jsp"> transactions.</a></span>
                <%-- <%
                out.println("Welcome "+stu_id+" your rollnumber is "+asdf+" Please remember it for fee submission");
                %> --%>
                
            </div>
        </div>
    </main>
</body>

</html>

