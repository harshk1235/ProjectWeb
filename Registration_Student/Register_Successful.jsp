<%
String username=(String)session.getAttribute("Name");
String value=(String)session.getAttribute("rol");

%>

<html>
<head>
    <title>Welcome</title>
    <link rel="stylesheet" href="../styles.css">
</head>


<body>
    <main>
        <div class="float-child left">
            <div class="logo"><a href="index.html">
                <img class="logo-img" src="../MySchoolDesign.jpeg" alt="">
					</a>
            </div>
        </div>
        <div class="float-child right">
            <div class="form">
                <h1>Congratulations !!!</h1><br>

                <span> You have successfully taken admission! </span>

                <br>
                <br>
                <span> 
                <%
                    out.println("Welcome "+username+" your rollnumber is "+value+" Please remember it for fee submission");

                %> </span>

                <br>
                <br>
                <span> Want to Pay fee ? <a href="../Pay_fee.html">Pay</a></span>
                
            </div>
        </div>
    </main>
</body>

</html>
