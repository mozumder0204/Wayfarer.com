<html>
<head><title> Admin | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php
$placeData    = array();
$areaData     = array();
$cityData     = array();
$typeData     = array();
$visitorData  = array();
$requestData  = array();
require("loadDataFunc.php");

//==========================================================View Place==============================================================================
if($_GET['table'] == "splace")
{
  $sql1 = "select * from place";
  $placeData = loadFromMySQLPlace($sql1);


  echo "<table border='1'>
        <tr>";
    foreach ( $placeData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($placeData) ; $i++)
    {
    echo "<tr>";

    foreach ( $placeData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}

//==========================================================View Area==============================================================================
if($_GET['table'] == "sarea")
{
  $sql2 = "select * from area";
  $areaData = loadFromMySQLArea($sql2);


  echo "<table border='1'>
        <tr>";
    foreach ( $areaData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($areaData) ; $i++)
    {
    echo "<tr>";

    foreach ( $areaData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}

//==========================================================View City==============================================================================
if($_GET['table'] == "scity")
{
  $sql3 = "select * from city";
  $cityData = loadFromMySQLCity($sql3);


  echo "<table border='1'>
        <tr>";
    foreach ( $cityData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($cityData) ; $i++)
    {
    echo "<tr>";

    foreach ( $cityData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}

//==========================================================View Type==============================================================================
if($_GET['table'] == "stype")
{
  $sql4 = "select * from type";
  $typeData = loadFromMySQLType($sql4);


  echo "<table border='1'>
        <tr>";
    foreach ( $typeData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($typeData) ; $i++)
    {
    echo "<tr>";

    foreach ( $typeData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}

//==========================================================View Visitor==============================================================================
if($_GET['table'] == "svisitor")
{
  $sql5 = "select * from visitor";
  $visitorData = loadFromMySQLVisitor($sql5);


  echo "<table border='1'>
        <tr>";
    foreach ( $visitorData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($visitorData) ; $i++)
    {
    echo "<tr>";

    foreach ( $visitorData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}
//==========================================================View Request==============================================================================
if($_GET['table'] == "srequest")
{
  $sql6 = "select * from request";
  $requestData = loadFromMySQLRequest($sql6);


  echo "<table border='1'>
        <tr>";
    foreach ( $requestData[0] as $k=>$v )
    {
        echo "<th>".$k."</th>";
    }
    echo "</tr>";

    for ($i = 0 ; $i< sizeof($requestData) ; $i++)
    {
    echo "<tr>";

    foreach ( $requestData[$i] as $k=>$v )
    {
      echo "<td>";
      echo $v;
      echo "</td>";
    }
    echo "</tr>";
  }
}

?>

</body>
</html>
