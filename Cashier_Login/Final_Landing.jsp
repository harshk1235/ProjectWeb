<%
String cashier=(String)session.getAttribute("cashier");
String stu_id=(String)session.getAttribute("stu_id");

%>


<html>
<head>
    <title>Finally</title>
    <link rel="stylesheet" href="../styles.css">
</head>

<body>
    <main>
        <div class="float-child left">
            <div class="logo">
						<a href="../index.html">
                <img class="logo-img" src="../MySchoolDesign.jpeg" alt="">
					</a>
            </div>
        </div>
        <div class="float-child right">
            <div class="form">
                <h1>Student Portal</h1><br>      

                <span> 
                <%
                    out.println("Greetings Cashier Your ID is  "+cashier);
                    %>
                    <br>
                    <%
                    out.println("You have logged in for student with ID "+stu_id);

                %> </span>          
                <br>
                <br>     
                    <a href="FeeRelatedAction/transactions.jsp"><button class="btn">Show all fee transactions.</button></a><br><br>
					<a href="FeeRelatedAction/pay_fee.jsp"><button class="btn">Pay Fee.</button></a><br><br>
                    <a href="FeeRelatedAction/total_fee.jsp"><button class="btn">Show total Fee paid</button></a>
                </form>
                
            </div>
        </div>
    </main>
</body>

</html>