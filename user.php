<?php
session_start();
if (!isset($_SESSION['check']) || $_SESSION["check"] !=  "perfect"){
	header("location:log_in.html");
}
if(isset($_REQUEST['name']))
{
	$name = $_REQUEST['name'];
}
?>

<!DOCTYPE html>
<html>
<head><title> User | Wayfarer</title>
<script type="text/javascript" src="./JS/user.js"></script>
<link rel="stylesheet" href="./CSS/master.css">
</head>
<body>
<form action="./PHP/user_work.php" method="post" name="ufm">

	<span>Wayfarer</span>
	<hr/>

	<input type="submit" name="logout" value="Log out" style=" float:right " />
	<br/>
	<h1 >User PANEL</h1>

	<h1 >>>> Welcome <?php echo $name; ?> <<<</h1>
	<br/>

  
  <!--
  =============================Request==================================================
  -->

  <h1>REQUEST TO ADMIN</h1>

  <table align="center" >
	<tr>
	<td style="font-size:35px">
		Name &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="rname" onkeyup="checkName(this)" />
		<div id="wrn1" ></div>
		<br/><br/>

		City &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="rcity" onkeyup="checkCity(this)" />
		<div id="wrn2" ></div>
		<br/><br/>

		Area &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="rarea" onkeyup="checkArea(this)" />
		<div id="wrn3" ></div>
		<br/><br/>

		Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="raddress" onkeyup="checkAddress(this)" />
		<div id="wrn4" ></div>
		<br/><br/>

		<input type="submit" name="request" value="SEND REQUEST" onclick = "return allOK();"/>
	</td>
	</tr>
	</table>

</form>
</body>
</html>
