<%
String cashier=(String)session.getAttribute("cashier");
if(cashier!=null)
{
%>
<html>
<head>
<title>
Success Page
</title>
<script>
function displayResult() {
str=document.getElementById("search").value;
if (str.length == 0) { 
    document.getElementById("display").innerHTML = "Please enter the name correctly";
        return;
    } else {

        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
	if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("display").innerHTML = xmlhttp.responseText;
            }
        }
        xmlhttp.open("GET", "xyz.jsp?q=" + str, true);
        xmlhttp.send();
    }
}
</script>
</head>
<body bgcolor=skyblue>
<div  style="float:right;width:180px;height:40px;">
<%
out.println("Welcome "+cashier+"<br>");
%>
<font size=3><a href=lastpage.jsp>Logout</a></font>
</div>
<div width:250px; height:25px;">
<input type=text id="search" placeholder="Search by name"> <button type=button onclick=displayResult()>Search</button>
</div>
<br>
<center><div id=display style="width:500px; height:300px;">
Your Search results will be displayed here
</div></center>
<%
}//end of if
else
{
response.sendRedirect("login.html");
}
%>

</body>
</html>