<?php

function loadFromFile()
{
	GLOBAL $a;	//For_getting_User_Information
	GLOBAL $b;	//For_getting_Admin_Information
	GLOBAL $c;	//For_getting_Place_Information

	$myfile = fopen("../Data/user_info.txt" , "r") or die("File not found");
	$myfile2 = fopen("../Data/admin_info.txt" , "r") or die("File not found");
	$myfile3 = fopen("../Data/place_database.txt" , "r") or die("File not found");

	while($line = fgets($myfile))
			{
				$up = explode ("-" , trim($line));
				$a[$up[1]] = $up[5];
			}
			fclose($myfile);

	while($line2 = fgets($myfile2))
			{
				$up2 = explode ("-" , trim($line2));
				$b[$up2[0]] = $up2[1];
			}
    fclose($myfile2);

		while($line3 = fgets($myfile3))
				{
					$up3 = explode ("-" , trim($line3));
					$c[ $up3[0] ] = "$up3[1]-$up3[2]-$up3[3]-$up3[4]-$up3[5]-$up3[6]-$up3[7]";
					}
		fclose($myfile3);

}

function loadFromXML(){
	GLOBAL $a;	//For_getting_User_Information
	GLOBAL $b;	//For_getting_Admin_Information

	$xml=simplexml_load_file("../Data/admin_info.xml") or die("Error: Cannot create object");
	$xml2=simplexml_load_file("../Data/user_info.xml") or die("Error: Cannot create object");

	foreach($xml as $st){
		$b[  (string)$st->username ]  = (string)$st->password ;
	}

	foreach($xml2 as $st2){
		$a[  (string)$st2->username ]  = (string)$st2->password ;
	}
}

function loadFromMySQLLogIn()
{
	GLOBAL $a;	//For_getting_User_Information
	GLOBAL $b;	//For_getting_Admin_Information

	$conn = mysqli_connect("localhost", "root", "","wayfarer");
	$sql = "select * from visitor";
	$sql2 = "select * from admin";
	$result = mysqli_query($conn, $sql)or die(mysqli_error($conn));
	$result2 = mysqli_query($conn, $sql2)or die(mysqli_error($conn));

	while($row = mysqli_fetch_assoc($result)) {
		$a[ $row["v_username"] ] = $row["v_pass"];
	}
		while($row2 = mysqli_fetch_assoc($result2)) {
		$b[ $row2["ad_username"] ] = $row2["ad_pass"];
	}
}

function loadFromMySQLView( $string )
{
	if($string == "splace")
	{
		GLOBAL $place;
		$conn3 = mysqli_connect("localhost", "root", "","wayfarer");
		$sql3 = "select * from place";
		$result3 = mysqli_query($conn3, $sql3)or die(mysqli_error($conn3));

		while($row3 = mysqli_fetch_assoc($result3)) {
			$pp1 = array();
			$pp1["p_id"] 			   	= $row3["p_id"];
			$pp1["p_name"]				= $row3["p_name"];
			$pp1["t_id"]					= $row3["t_id"];
			$pp1["a_id"]					= $row3["a_id"];
			$pp1["p_address"]		  = $row3["p_address"];
			$pp1["p_phone"]		  	= $row3["p_phone"];
			$pp1["p_mail"]				= $row3["p_mail"];
			$pp1["p_website"]	   	= $row3["p_website"];
			$pp1["p_point"]		  	= $row3["p_point"];
			$pp1["p_url"]		  		= $row3["p_url"];
			$place	=  $pp1 ;
			return $place ;
		}
	}
}

function loadFromMySQLCity($sql4)
{
	GLOBAL $cityData;
	$i=0;
	$conn4 = mysqli_connect("localhost", "root", "","wayfarer");
	$result4 = mysqli_query($conn4, $sql4)or die(mysqli_error($conn4));
	while($row4 = mysqli_fetch_assoc($result4)) {
		$pp2 = array();
		$pp2["c_id"] 				= $row4["c_id"];
		$pp2["c_name"]	  	= $row4["c_name"];
		$cityData[$i]	=  $pp2 ;
		$i++;
	}
	$i=0;
	return $cityData ;
}

function loadFromMySQLArea($sql5)
{
	GLOBAL $areaData;
	$i=0;
	$conn5 = mysqli_connect("localhost", "root", "","wayfarer");
	$result5 = mysqli_query($conn5, $sql5)or die(mysqli_error($conn5));
	while($row5 = mysqli_fetch_assoc($result5)) {
		$pp3 = array();
		$pp3["a_id"] 				= $row5["a_id"];
		$pp3["a_name"]	  	= $row5["a_name"];
		$pp3["c_id"]	  	  = $row5["c_id"];
		$areaData[$i]	=  $pp3 ;
		$i++;
	}
	$i=0;
	return $areaData ;
}

function loadFromMySQLType($sql6)
{
	GLOBAL $typeData;
	$i=0;
	$conn6 = mysqli_connect("localhost", "root", "","wayfarer");
	$result6 = mysqli_query($conn6, $sql6)or die(mysqli_error($conn6));
	while($row6 = mysqli_fetch_assoc($result6)) {
		$pp4 = array();
		$pp4["t_id"] 				= $row6["t_id"];
		$pp4["t_name"]	  	= $row6["t_name"];
		$typeData[$i]	=  $pp4 ;
		$i++;
	}
	$i=0;
	return $typeData ;
}
function loadFromMySQLType2($sql8)
{
	GLOBAL $typeData2;
	$i=0;
	$conn8 = mysqli_connect("localhost", "root", "","wayfarer");
	$result8 = mysqli_query($conn8, $sql8)or die(mysqli_error($conn8));
	while($row8 = mysqli_fetch_assoc($result8)) {
		$pp6 = array();
		$pp6["t_id"] 				= $row8["t_id"];
		$pp6["t_name"]	  	= $row8["t_name"];
		$typeData[$i]	=  $pp6 ;
		$i++;
	}
	$i=0;
	return $typeData2 ;
}

function loadFromMySQLPlace($sql7)
{
		GLOBAL $placeData;
		$i=0;

		$conn7 = mysqli_connect("localhost", "root", "","wayfarer");
		$result7 = mysqli_query($conn7, $sql7)or die(mysqli_error($conn7));
		while($row7 = mysqli_fetch_assoc($result7)) {
			$pp5 = array();
			$pp5["p_id"] 			   	= $row7["p_id"];
			$pp5["p_name"]				= $row7["p_name"];
			$pp5["t_id"]					= $row7["t_id"];
			$pp5["a_id"]					= $row7["a_id"];
			$pp5["p_address"]		  = $row7["p_address"];
			$pp5["p_phone"]		  	= $row7["p_phone"];
			$pp5["p_mail"]				= $row7["p_mail"];
			$pp5["p_website"]	   	= $row7["p_website"];
			$pp5["p_point"]		  	= $row7["p_point"];
			$pp5["p_url"]		  		= $row7["p_url"];
			$placeData[$i]	=  $pp5 ;
			$i++;
		}
			$i = 0;
			return $placeData ;

}

function loadFromMySQLPlace2($sql9)
{
		GLOBAL $placeData2;
		$i=0;

		$conn9 = mysqli_connect("localhost", "root", "","wayfarer");
		$result9 = mysqli_query($conn9, $sql9)or die(mysqli_error($conn9));
		while($row9 = mysqli_fetch_assoc($result9)) {
			$pp7 = array();
			$pp7["p_id"] 			   	= $row9["p_id"];
			$pp7["p_name"]				= $row9["p_name"];
			$pp7["t_id"]					= $row9["t_id"];
			$pp7["a_id"]					= $row9["a_id"];
			$pp7["p_address"]		  = $row9["p_address"];
			$pp7["p_phone"]		  	= $row9["p_phone"];
			$pp7["p_mail"]				= $row9["p_mail"];
			$pp7["p_website"]	   	= $row9["p_website"];
			$pp7["p_point"]		  	= $row9["p_point"];
			$pp7["p_url"]		  		= $row9["p_url"];
			$placeData2[$i]	=  $pp7 ;
			$i++;
		}
			$i = 0;
			return $placeData2 ;
}

function loadFromMySQLVisitor($sql10)
{
	GLOBAL $visitorData;
	$i=0;
	$conn10 = mysqli_connect("localhost", "root", "","wayfarer");
	$result10 = mysqli_query($conn10, $sql10)or die(mysqli_error($conn10));

	while($row10 = mysqli_fetch_assoc($result10)) {
		$pp8 = array();
		$pp8["v_id"] 			   	= $row10["v_id"];
		$pp8["v_username"]		= $row10["v_username"];
		$pp8["v_pass"]				= $row10["v_pass"];
		$pp8["v_name"]				= $row10["v_name"];
		$pp8["v_gender"]		  = $row10["v_gender"];
		$pp8["v_mail"]		  	= $row10["v_mail"];
		$pp8["v_phone"]				= $row10["v_phone"];
		$pp8["DOB"]	   				= $row10["DOB"];
		$visitorData[$i]	=  $pp8 ;
		$i++;
	}
	$i=0;
	return $visitorData ;
}

function loadFromMySQLRequest($sql11)
{
	GLOBAL $requestData;
	$i=0;
	$conn11 = mysqli_connect("localhost", "root", "","wayfarer");
	$result11 = mysqli_query($conn11, $sql11)or die(mysqli_error($conn11));

	while($row11 = mysqli_fetch_assoc($result11)) {
		$pp9 = array();
		$pp9["req_id"] 			   	= $row11["req_id"];
		$pp9["req_name"]				= $row11["req_name"];
		$pp9["req_city"]				= $row11["req_city"];
		$pp9["req_area"]				= $row11["req_area"];
		$pp9["req_address"]		  = $row11["req_address"];
		$pp9["v_id"]		  			= $row11["v_id"];
		$requestData[$i]	=  $pp9 ;
		$i++;
	}
	$i=0;
	return $requestData ;
}







?>
