<html>
<head><title> Admin | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php

$iname      = $_REQUEST ["iname"];
$itid       = $_REQUEST ["itid"];
$itid2      =array($_REQUEST ["itid"]);
$iaid       = $_REQUEST ["iaid"];
$iaid2      =array($_REQUEST ["iaid"]);
$iaddress   = $_REQUEST ["iaddress"];
$iphone     = $_REQUEST ["iphone"];
$iphone2    =array($_REQUEST ["iphone"]);
$imail      = $_REQUEST ["imail"];
$iweb       = $_REQUEST ["iweb"];

$pid         = $_REQUEST ["pid"];
$upname      = $_REQUEST ["upname"];
$uptid       = $_REQUEST ["uptid"];
$uptid2      =array($_REQUEST ["uptid"]);
$upaid       = $_REQUEST ["upaid"];
$upaid2      =array($_REQUEST ["upaid"]);
$upaddress   = $_REQUEST ["upaddress"];
$upphone     = $_REQUEST ["upphone"];
$upphone2    =array($_REQUEST ["upphone"]);
$upmail      = $_REQUEST ["upmail"];
$upweb       = $_REQUEST ["upweb"];

$dpid       = $_REQUEST ["dpid"];


$itmp        = $_FILES["fileToUpload1"]["tmp_name"];
$iname       = $_FILES["fileToUpload1"]["name"];
$iext        = pathinfo($iname, PATHINFO_EXTENSION);
$itarget     = "./image_db/" . $iname ;

$uptmp        = $_FILES["fileToUpload2"]["tmp_name"];
$uplname      = $_FILES["fileToUpload2"]["name"];
$upext        = pathinfo($uplname, PATHINFO_EXTENSION);
$uptarget     = "./image_db/" . $uplname ;

//==========================================================Logout=========================================================
if (isset($_REQUEST["logout"]))
{
  header("Location:logout.php");
}

//==========================================================INSERT=========================================================
else if (isset($_REQUEST["insert"]))
{
  include("input_validation.php");
  $ok = insertValidation();

  if ( $ok == "ok" )
  {
    move_uploaded_file($itmp , ".".$itarget);
    include("storeDataFunc.php");
    //insertToFilePInfo();
    insertToMySQLPInfo();
    echo "<h2>".">>> Place Inserted Successfully <<<"."</h2>";

  }

}
//==========================================================Update===========================================================
else if (isset($_REQUEST["update"]))
{
  include("input_validation.php");
  $ok2 = updateValidation();

  if ( $ok2 == "ok" )
  {
    move_uploaded_file($uptmp,$uptarget);
    include("storeDataFunc.php");
    updateToMySQLPInfo();
    echo "<h2>".">>> Place Updated Successfully <<<"."</h2>";
  }
}

//==========================================================Delete===========================================================
else if (isset($_REQUEST["delete"]))
{
  include("input_validation.php");
  $ok3 = deleteValidation();
  if ( $ok3 == "ok" )
  {
    include("storeDataFunc.php");
    deleteToMySQLPInfo();
    echo "<h2>".">>> Place Deleted Successfully <<<"."</h2>";
  }
}
//==========================================================VIEW===========================================================
else if(isset($_REQUEST["view"]))
{
  if (isset($_REQUEST["search"]))
  {
    $splace = $_REQUEST["search"];
    if ( $splace == "splace" )
    {
      include("loadDataFunc.php");
      $place = array();
      $place = loadFromMySQLView($splace);

    echo " <table border='2' style='color:#05386B;font-size:35px' align='center' width=70%> " ;
              echo " <tr> ";
              for ($i = 0 ; $i < sizeof($place) ; $i++ )
              {
                echo "<th>" . array_keys($place)[$i] . "</th>";
              }
              echo " </tr> ";

              echo " <tr> ";
              for ($i = 0 ; $i < sizeof($place) ; $i++ )
              {
                //echo "<td>" . array_keys($place)[$i] . "</td>";

              }
              echo " </tr> ";
    echo " </table>";

    }
  }
  else {
    echo "<h2>".">>> Select an option to View <<<"."</h2>";
  }
}


?>

</body>
</html>
