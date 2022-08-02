<%
String cashier=(String)session.getAttribute("cashier");
%>



<html>
<head>
    <title>Welcome</title>
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
                <h1>Fee Submission Portal</h1><br>
                

                <br>
                <span> 
                <%
                    out.println("Greetings Cashier Your ID is  "+cashier);

                %> </span>
                
                <form action="student_auth.jsp" name="form5" method="post" onsubmit="return validate()">
                    <div class="form-group">
                        <input type=text name=student_id placeholder="Enter Student ID" required>
                    </div>
                    
                    <button class="btn">Submit</button>

                </form>
                
            </div>
        </div>
    </main>
</body>

</html>