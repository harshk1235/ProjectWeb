<%
String cashier=(String)session.getAttribute("cashier");
%>



<html>
<head>
    <title>Student Portal</title>
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
                

                <br>
                <span> 
                <%
                    out.println("Greetings Cashier Your ID is  "+cashier);

                    %>
                    <br>
                    <%

                    out.println("The Entered student id is invalid. Please try again.");

                %> </span>
                
                <form action="student_auth.jsp" name="form5" method="post" onsubmit="return validate()">
                    <div class="form-group">
                        <input type="number" name=student_id placeholder="Enter Student ID" required>
                    </div>
                    
                    <button class="btn">Submit</button>

                </form>
                
            </div>
        </div>
    </main>
</body>

</html>