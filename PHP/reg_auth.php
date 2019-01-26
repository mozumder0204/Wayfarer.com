<html>
<head><title> Registration Check | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php

$fname    = $_REQUEST ["fname"];
$uname    = $_REQUEST ["uname"];
$mail 		= $_REQUEST ["mail"];
$phone   = $_REQUEST ["phone"];
$phone2    = array($_REQUEST ["phone"]);
$pass  		= $_REQUEST ["pass"];
$cpass 		= $_REQUEST ["cpass"];

$day   		= $_REQUEST ["day"];
$month 		= $_REQUEST ["month"];
$year  		= $_REQUEST ["year"];
if (isset($_REQUEST ["gender"]) == true)
$gender		= $_REQUEST ["gender"];

//==================Checking Fields=================================
if(empty($fname)||empty($uname)||empty($mail)||empty($phone)||empty($pass)||empty($cpass))
{
	echo "<h1>"."You must fill all the fields"."</h1>";
	//echo "<a href='../reg_form.html'>Go to back</a> ";
}

else if($day == "day"||$month == "month"||$year == "year")
{
	echo "<h1>"."You must fill all the fields"."</h1>";
	//echo "<a href='../reg_form.html'>Go to back</a> ";

}
else if(isset($gender) == false)
{
	echo "<h1>"."You must fill all the fields"."</h1>";
	//echo "<a href='../reg_form.html'>Go to back</a> ";
}
//==================Checking_EMAIL=================================
else if (!filter_var($mail, FILTER_VALIDATE_EMAIL)) {
	$emailErr = "Invalid email format";
	echo "<h1>"."Invalid email"."</h1>";
}
else if (!ctype_digit($phone)) //Checks if all of the characters in the provided text are numerical
{
	foreach ($phone2 as $testcase2)
	{
			if (ctype_digit($testcase2) == false) //Checks if all of the characters in the provided text are numerical
			{
			echo "<h2>"."Invalid. Phone Number should contains only digits"."</h2>";
			}
		}
	}
//==================Checking_Password & Confirm_Password=================================
else if(strlen($pass) < 4 )
{
	echo "<h1>"."Use 4 characters or more for password"."</h1>";
}

	else if($pass != $cpass)
	{
		echo "<h1>"."Those passwords didn't match. Try gain."."</h1>";
	}

//==================Checking_Phone_Number=================================
else if(!ctype_digit($phone))
{
foreach ($phone2 as $testcase4)
{
		if (ctype_digit($testcase4) == false) //Checks if all of the characters in the provided text are numerical
		{
		echo "<h2>"."Invalid. Phone Number should contains only digits"."</h2>";
		}
	}
}


//==================Load data to text=================================
else
	{

	include("storeDataFunc.php");

	//storeToFileVInfo();
	storeToMYSQLVInfo();

	include("reg_auth_complete.php");
}
?>

</body>
</html>
