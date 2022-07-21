<html>

<head>
    <title>Pay fees</title>
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
<style>
    @import url('https://fonts.googleapis.com/css2?family=Baloo+Bhaijaan+2:wght@400;500;600&family=Montserrat:wght@300;400;500&family=Nunito:wght@300&display=swap');

    * {
        margin: 0;
        padding: 0;
        font-family: 'Montserrat', sans-serif;
        box-sizing: border-box;
    }


    main {
        display: flex;
    }

    .form-group input {
background-color:#EEEEEE;
        border: 2px solid black;
        margin: 20px auto;
        padding: 10px 18px;
        display: block;
        width: 500px;
        text-align: left;
        border-radius: 15px;
        font-size: 1rem;
    }

    .float-child {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 50%;
        height: 100vh;
        float: left;
        padding: 20px;
        /* border: 2px solid red; */
    }

    .left {
        background-color: #25166B;
    }

    .right {
        text-align: center;
background-color: #E7F6F2;
    }

    .logo-img {
        width: 350px;
        height: 350px;
    }

    .logo-img:hover {
        transition: 0.4s;
        transform: scale(1.2);
    }

    .btn {
        width: 500px;
        height: 35px;
        background-color: #25166B;
        color: white;
        font-size: 1.4rem;
        border: none;
        border-radius: 10px;
    }

    .btn:hover {
        transition: 0.2s;
        background-color: #FFA500;
    }

    #forgot-password a{
        padding: 10px;
        font-size: 0.9rem;
        text-decoration: none;
        color: gray;
    }
</style>

<body>
    <main>
        <div class="float-child left">
            <div class="logo">
						<a href="index.html">
                <img class="logo-img" src="MySchoolDesign.jpeg" alt="">
					</a>
            </div>
        </div>
        <div class="float-child right">
            <div class="form">
                <h1>Student Portal</h1><br>
                <span> See your Transactions. <a href="login_Student.html">Login</a></span>
                <form action="fee_auth.jsp" name="form1" method="post" onsubmit="return validate()">
                    <div class="form-group">
                        <input type="number" name=amt placeholder="Enter the amount" required>
                    </div>
                    <div class="form-group">
                        <input type="Date" name=DoB placeholder="Enter Your Date Of Birth" required>
                    </div>
                    <button class="btn">Submit</button>

                </form>
                
            </div>
        </div>
    </main>
</body>

</html>