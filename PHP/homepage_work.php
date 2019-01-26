<html>
<head><title> Homepage | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />
<?php

$cityData   =array();
$areaData   = array();
$typeData   = array();
$typeData2  = array();
$placeData  = array();
$placeData2  = array();
require("loadDataFunc.php");

//==========================Get City ID=====================
if (isset($_GET['c_name'])){
$sql1 = "select * from city where c_name = '".$_GET['c_name']."'";
$cityData  = loadFromMySQLCity($sql1);
$cid = $cityData[0]["c_id"];
//echo $cid;
}

//==========================Get Area Name=====================
if (isset($cid)){
$sql2 = "select * from area where  c_id = '".$cid."'  ";
$areaData = loadFromMySQLArea($sql2);
}
//==========================Get Type ID=====================
if (isset($_GET['t_name'])){
$sql5 = "select * from type where  t_name = '".$_GET['t_name']."' ";
$typeData = loadFromMySQLType($sql5);
if(isset($typeData[0]["t_id"])){
$tid = $typeData[0]["t_id"];
}
}
//==========================Get Type Name=====================
$sql7 = "select * from type";
$typeData2 = loadFromMySQLType2($sql7);

//==========================View Show ALL by Area=====================
if (isset($_GET['a_name'])){
$sql3 = "select * from area where a_name = '".$_GET['a_name']."' ";
$areaData = loadFromMySQLArea($sql3);
if(isset($areaData[0]["a_id"])){
$aid = $areaData[0]["a_id"];

$sql4 = "select * from place where a_id = '".$aid."'   ";
$placeData = loadFromMySQLPlace($sql4);
}
}
//==========================View Show ALL by Type=====================
if (isset($_GET['a_name']) && isset($_GET['t_name']) && isset($aid) && isset($tid) ){
$sql6 = "select * from place where a_id = '".$aid."' and t_id = '".$tid."' ";
$placeData2 = loadFromMySQLPlace2($sql6);
}

//==========================View Area Name in Combo Box=====================
if($_GET['check'] == "checkInArea")
{
  $options ="";
  $select = "<select name='area' onchange='showALLByArea()' style='font-family:Josefin Sans ; font-size:35px ;
  color:#05386B;background-color:#5CDB95'>
  <option value='area'>Area</option>";

for($i=0 ; $i<sizeof($areaData) ; $i++)
 {
       $options .= "<option value='" . $areaData[$i]["a_name"] . "'>" . $areaData[$i]["a_name"] . "</option>";
  }
  $select .= $options . "</select>";
  echo $select;
}

//==========================View All type of Place Data by Area=====================
else if($_GET['check'] == "showALLByArea")
{
  for($i=0 ; $i<sizeof($placeData) ; $i++)
  {
  echo "<br />";
  echo "<hr />";
  echo "<img alt='not found' src='".$placeData[$i]["p_url"]."' width='300px' height='300px'/>";
  echo "<br />";
  echo "Name   : ".$placeData[$i]["p_name"];
  echo "<br />";echo "<br />";
  echo "Address: ".$placeData[$i]["p_address"];
  echo "<br />";echo "<br />";
  echo "Mobile : ".$placeData[$i]["p_phone"];
  echo "<br />";echo "<br />";
  echo "Email  : ".$placeData[$i]["p_mail"];
  echo "<br />";echo "<br />";
  echo "Website: ".$placeData[$i]["p_website"];
  echo "<hr />";
  echo "<br />";echo "<br />";
  }
}

//==========================View Type Name in Combo Box=====================
else if($_GET['check'] == "showALLByType")
{
  for($i=0 ; $i<sizeof($placeData2) ; $i++)
  {
  echo "<br />";
  echo "<hr />";
  echo "<img alt='not found' src='".$placeData2[$i]["p_url"]."' width='300px' height='300px'/>";
  echo "<br />";
  echo "Name   : ".$placeData2[$i]["p_name"];
  echo "<br />";echo "<br />";
  echo "Address: ".$placeData2[$i]["p_address"];
  echo "<br />";echo "<br />";
  echo "Mobile : ".$placeData2[$i]["p_phone"];
  echo "<br />";echo "<br />";
  echo "Email  : ".$placeData2[$i]["p_mail"];
  echo "<br />";echo "<br />";
  echo "Website: ".$placeData2[$i]["p_website"];
  echo "<hr />";
  echo "<br />";echo "<br />";
  }

}


?>
</body>
</html>
