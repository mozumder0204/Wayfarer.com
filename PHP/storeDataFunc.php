<?php

function storeToFileVInfo()
{
	GLOBAL	$fname;
	GLOBAL	$uname;
	GLOBAL	$gender;
	GLOBAL	$mail;
	GLOBAL	$phone;
	GLOBAL	$pass;
	GLOBAL	$day;
	GLOBAL	$month;
	GLOBAL	$year;

	$myfile = fopen('../Data/user_info.txt' , 'a') or die('File not found');
	$txt = $fname . '-' . $uname . '-' . $gender . '-' . $mail . '-' . $phone . '-' . $pass . '-' .
				$day . '-' . $month . '-' . $year . "\r\n" ;
	fwrite($myfile, $txt);
	fclose($myfile);
	}

	function storeToMYSQLVInfo()
	{
		GLOBAL	$fname;
		GLOBAL	$uname;
		GLOBAL	$gender;
		GLOBAL	$mail;
		GLOBAL	$phone;
		GLOBAL	$pass;
		GLOBAL	$day;
		GLOBAL	$month;
		GLOBAL	$year;

		$conn = mysqli_connect("localhost", "root", "","wayfarer");
		$sql = "INSERT INTO visitor (v_id, v_username, v_pass, v_name, v_gender, v_mail, v_phone, DOB)
						VALUES (NULL, '$uname' , '$pass' , '$fname' , '$gender' , '$mail' , '$phone' , '$day-$month-$year')";
		$result = mysqli_query($conn, $sql)or die(mysqli_error($conn));

		mysqli_close($conn);
	}

	function storeToFileReq()
	{
		GLOBAL $rname; GLOBAL $rcity; GLOBAL $rarea; GLOBAL $raddress;

		$myfile2 = fopen('../Data/user_request.txt' , 'a') or die('File not found');
		$txt2 = $rname . '-' . $rcity . '-' . $rarea . '-' . $raddress . "\r\n" ;
		fwrite($myfile2, $txt2);
		fclose($myfile2);
	}

	function insertToMySQLReq()
	{
		GLOBAL $rname; GLOBAL $rcity; GLOBAL $rarea; GLOBAL $raddress;

		$conn5 = mysqli_connect("localhost", "root", "","wayfarer");
		$sql5 = "INSERT INTO request (req_id, req_name, req_city, req_area, req_address, v_id)
						 VALUES (NULL , '$rname' , '$rcity', '$rarea' , '$raddress' , '1') ";
		$result5 = mysqli_query($conn5, $sql5)or die(mysqli_error($conn5));
		mysqli_close($conn5);

	}


	function insertToFilePInfo()
	{
		GLOBAL $iname; GLOBAL $itid; GLOBAL $iaid; GLOBAL $iaddress;
		GLOBAL $iphone; GLOBAL $imail; GLOBAL $iweb;
		$iid = uniqid();

		$myfile2 = fopen('../Data/place_database.txt' , 'a') or die('File not found');
		$txt2 =  $iid. '-' . $iname . '-' . $itid . '-' . $iaid . '-' . $iaddress . '-' . $iphone . '-' . $imail . '-' . $iweb . "\r\n" ;
		fwrite($myfile2, $txt2);
		fclose($myfile2);
	}

	function insertToMySQLPInfo()
	{
		GLOBAL $iname; GLOBAL $itid; GLOBAL $iaid; GLOBAL $iaddress;
		GLOBAL $iphone; GLOBAL $imail; GLOBAL $iweb; GLOBAL $itarget;

		$conn2 = mysqli_connect("localhost", "root", "","wayfarer");
		$sql2 = "INSERT INTO place (p_id, p_name, t_id, a_id, p_address, p_phone, p_mail, p_website, p_point, p_url)
							VALUES (NULL, '$iname', '$itid', '$iaid', '$iaddress', '$iphone', '$imail', '$iweb', '0', '$itarget')";
		$result2 = mysqli_query($conn2, $sql2)or die(mysqli_error($conn2));

		mysqli_close($conn2);
	}

		// function update()
		// {
		// 	GLOBAL $pid; GLOBAL $upname; GLOBAL $uptid; GLOBAL $upaid; GLOBAL $upaddress;
		// 	GLOBAL $upphone; GLOBAL $upmail; GLOBAL $upweb;
		//
		// 	include("loadDataFunc.php");
		// 	$c = array();
		// 	loadFromFile();
		//
		// 	if( isset($c[$pid]))
		//   {
		//     unset($c[$pid]);
		//     foreach ($c as $key => $value) {
		//                $txt3 = $key ."-". $value . "\r\n";
		//                //echo $txt3;
		//              }
		//               //echo $txt3;
		//       $txt4 = $pid ."-". $upname."-". $uptid."-". $upaid."-". $upaddress."-". $upphone."-".
		//               $upmail."-". $upweb ;
		//
		//     $myfile4 = fopen("../Data/place_database.txt" , "w") or die("File not found");
		//     $txt2 ="Place ID-Name-Type ID-Area ID-Address-Phone-Email-Website". "\r\n". "-------". "\r\n";
		//      //fwrite($myfile4 , $txt2);
		//      fwrite($myfile4 , $txt3);
		//      fwrite($myfile4 , $txt4);
		//      fclose($myfile4);
		// 		 return "ok";
		//   }
		// }

		function updateToMySQLPInfo()
		{
			GLOBAL $pid; GLOBAL $upname; GLOBAL $uptid; GLOBAL $upaid; GLOBAL $upaddress;
			GLOBAL $upphone; GLOBAL $upmail; GLOBAL $upweb; GLOBAL $uptarget;

			$conn3 = mysqli_connect("localhost", "root", "","wayfarer");
			$sql3 = "UPDATE place SET p_name='$upname' , t_id='$uptid' , a_id='$upaid' , p_address='$upaddress',
							p_phone='$upphone' , p_mail='$upmail' , p_website='$upweb' , p_point='0' ,
							p_url = '$uptarget' WHERE p_id = '$pid' ";

			$result3 = mysqli_query($conn3, $sql3)or die(mysqli_error($conn3));
			mysqli_close($conn3);
		}

		function deleteToMySQLPInfo()
		{
			GLOBAL $dpid ;

			$conn4 = mysqli_connect("localhost", "root", "","wayfarer");
			$sql4 = "DELETE FROM place WHERE p_id = '$dpid' ";
			$result4 = mysqli_query($conn4, $sql4)or die(mysqli_error($conn4));
			mysqli_close($conn4);
		}



?>
