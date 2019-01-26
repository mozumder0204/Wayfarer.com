<html>
<head><title> Landing Page | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php

if (isset($_REQUEST["getstarted"]))
{
  header("Location:../homepage.php");
}
else if (isset($_REQUEST["login"]))
{
  header("Location:../log_in.html");
}
else if (isset($_REQUEST["registration"]))
{
  header("Location:../reg_form.html");
}




?>
</body>
</html>
