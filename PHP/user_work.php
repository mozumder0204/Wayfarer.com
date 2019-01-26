<html>
<head><title> Registration Complete | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php

$rname        = $_REQUEST ["rname"];
$rcity        = $_REQUEST ["rcity"];
$rarea        = $_REQUEST ["rarea"];
$raddress     = $_REQUEST ["raddress"];

//==========================================================Logout===============================================================================
  if (isset($_REQUEST["logout"]))
  {
    header("Location:logout.php");
  }

  //==========================================================Request===============================================================================
  else if (isset($_REQUEST["request"]))
  {
    include("input_validation.php");
    $ok = requestValidation();

    if ( $ok == "ok" )
    {
    include("storeDataFunc.php");
    //storeToFileReq();
    insertToMySQLReq();
    echo "<h2>".">>> Request Sent Successfully <<<"."</h2>";
    }
  }












?>

</body>
</html>
