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
<head><title> Admin | Wayfarer</title>
<script type="text/javascript" src="./JS/admin.js"></script>
<link rel="stylesheet" href="./CSS/master.css">
</head>
<body>
<form  action="./PHP/admin_work.php" method="post" enctype="multipart/form-data" name="afm">

	<span>Wayfarer</span>
	<hr/>
	<input type="submit" name="logout" value="Log out" style=" float:right "/>
	<br/>
	<h1>ADMIN PANEL</h1>
	<h1>>>> Welcome <?php echo $name; ?><<<</h1>
	<br/>

	<!--
	=============================View Information==================================================
	-->

	<h1 >PLACE INFORMATION</h1>
	<br/>

	<table align="center"><tr><td>
	<input type="radio" name="search" onclick="viewInfo()" value="splace"/>Place
	<input type="radio" name="search" onclick="viewInfo()" value="sarea"/>Area
	<input type="radio" name="search" onclick="viewInfo()" value="scity"/>City
	<input type="radio" name="search" onclick="viewInfo()" value="stype"/>Type
	<input type="radio" name="search" onclick="viewInfo()" value="svisitor"/>Visitor
	<input type="radio" name="search" onclick="viewInfo()" value="srequest"/>Request
	<br/><br/>

	<div id="view"></div>

	</tr></td></table>
	<br/>

	<!--
		=============================INSERT==================================================
	-->

	<h1 >INSERT PLACE INFORMATION</h1>

	<table align="center" >
	<tr>
	<td>
		Name &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="iname" onkeyup="checkiName(this)"/>
		<div id="wrn1" ></div>
		<br/><br/>

		Type ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="itid" onkeyup="checkiType(this)" />
		<div id="wrn2" ></div>
		<br/><br/>

		Area ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="iaid" onkeyup="checkiArea(this)" />
		<div id="wrn3" ></div>
		<br/><br/>

		Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="iaddress" onkeyup="checkiAddress(this)" />
		<div id="wrn4" ></div>
		<br/><br/>

		Phone Number :
		<input type ="text" name="iphone" onkeyup="checkiPhone(this)" />
		<div id="wrn5" ></div>
		<br/><br/>

		Email Address :
		<input type ="text" name="imail" onkeyup="checkiMail(this)"/>
		<div id="wrn6" ></div>
		<br/><br/>

		Website &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="iweb" onkeyup="checkiWeb(this)" />
		<div id="wrn7" ></div>
		<br/><br/>

		Select image to upload :
		<br/>
		<input type="file" name="fileToUpload1" onchange="checkiFile(this)"
		style="font-family:Josefin Sans;font-size:20px;color:#05386B">
		<div id="wrn8" ></div>
		<br/><br/>

		<input type="submit" name="insert" value="INSERT" onclick = "return allOK();"/>
	</td>
	</tr>
	</table>

	<br/><br/>

	<!--
	=============================UPDATE==================================================
	-->
	<h1>UPDATE PLACE INFORMATION</h1>

	<table align="center" >
	<tr>
	<td >
		Place ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="pid" onkeyup="checkupPid(this)" />
		<div id="wrn9" ></div>
		<br/><br/>

		Name &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="upname" onkeyup="checkupName(this)" />
		<div id="wrn10" ></div>
		<br/><br/>

		Type ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="uptid" onkeyup="checkupType(this)" />
		<div id="wrn11" ></div>
		<br/><br/>

		Area ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="upaid" onkeyup="checkupArea(this)" />
		<div id="wrn12" ></div>
		<br/><br/>

		Address &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="upaddress" onkeyup="checkupAddress(this)" />
		<div id="wrn13" ></div>
		<br/><br/>

		Phone Number :
		<input type ="text" name="upphone" onkeyup="checkupPhone(this)" />
		<div id="wrn14" ></div>
		<br/><br/>

		Email Address :
		<input type ="text" name="upmail" onkeyup="checkupMail(this)" />
		<div id="wrn15" ></div>
		<br/><br/>

		Website &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="upweb" onkeyup="checkupWeb(this)" />
		<div id="wrn16" ></div>
		<br/><br/>

		Select image to upload :
		<br/>
		<input type="file" name="fileToUpload2" onchange="checkupFile(this)"
		style="font-family:Josefin Sans;font-size:20px;color:#05386B">
		<div id="wrn17" ></div>
		<br/><br/>

		<input type="submit" name="update" value="UPDATE" onclick = "return allOK2();"/>

	</td>
	</tr>
	</table>

	<br/>

	<!--
	=============================DELETE==================================================
	-->

	<h1>DELETE PLACE INFORMATION</h1>

	<table align="center" >
	<tr>
	<td >
		Place ID &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp:
		<input type ="text" name="dpid" onkeyup="checkDeleteID(this)" />
		<div id="wrn18" ></div>

		<br/><br/>

		<input type="submit" name="delete" value="DELETE" onclick = "return allOK3();"/>
	</td>
	</tr>
	</table>



	<br/><br/>

</form>
</body>
</html>
