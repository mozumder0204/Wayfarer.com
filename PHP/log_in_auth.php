<html>
<head><title> Log In Check | Wayfarer</title></head>
<body style="background-color:#5CDB95" align="center">
<form style="font-family:Josefin Sans;font-size:35px ; color:#05386B">
<br /><br /><br /><br />

<?php

	$luname    = $_REQUEST ["luname"];
	$lpass     = $_REQUEST ["lpass"];

	//==================Checking Fields=================================
		if(empty($luname) && empty($lpass))
		{
			echo "<h1>"."Enter your username and password"."</h1>";
			// echo "<a href='../log_in.html' style='font-family:Amaranth ; font-size:35px ; color:#05386B;
					// text-decoration:underline'>BACK</a>";
		}
		else if(empty($luname))
		{
			echo "<h1>"."Enter your username"."</h1>";
		}
		else if(empty($lpass))
		{
			echo "<h1>"."Enter your password"."</h1>";
		}

		 else if (strlen($lpass) < 4 )
		{
			echo "<h1>"."Use 4 characters or more"."</h1>";
		}
		else{

		//==================Read Data=================================

		include("loadDataFunc.php");
		$a = array();		//For_getting_User_Information
		$b = array();		//For_getting_Admin_Information
		//loadFromFile();
		//loadFromXML();
		loadFromMySQLLogIn();

	//==================Check Validation=================================
	session_start();
	$_SESSION["check"]="";

		if(isset($a[$luname]) && $a[$luname] == $lpass)
	  {
		$_SESSION["check"]="perfect";
		header('Location: ../user.php?'.'name='.$luname);
	  }
		else if(isset($b[$luname]) && $b[$luname] == $lpass)
		{
			$_SESSION["check"]="perfect";
			header('Location: ../admin.php?'.'name='.$luname);
		}
	  else
	  {
		echo "<h1>"."Invalid Username or Password"."</h1>";
	  }
}


?>

</body>
</html>
