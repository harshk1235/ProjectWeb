<html>

<head>
    <title>Pay fees</title>
    <link rel="stylesheet" href="../../styles.css">
</head>
<script>
function validate()
{
var amt=document.getElementById("amt").value;


if(amt>100000)
{
alert("Amount cannot be accepted, Its more than the total fees.");
return false;
}

return true;
}
</script>


<body>
    <main>
        <div class="float-child left">
            <div class="logo">
						<a href="../../index.html">
                <img class="logo-img" src="../../MySchoolDesign.jpeg" alt="">
					</a>
            </div>
        </div>
        <div class="float-child right">
            <div class="form">
                <h1>Student Portal</h1><br>
                <span> See your  <a href="transactions.jsp">Transactions. </a></span>
                <form action="fee_auth.jsp" name="form1" method="post" onsubmit="return validate()">
                    <div class="form-group">
                        <input type="text" name=amt placeholder="Enter the amount" required>
                    </div>
                    <div class="form-group">
                        <input type="Date" name=ddate placeholder="Date of transaction" required>
                    </div>
                    <button class="btn">Submit</button>

                </form>
                
            </div>
        </div>
    </main>
</body>

</html>