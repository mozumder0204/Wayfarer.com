<!DOCTYPE html>
<html>
<head><title> Homepage | Wayfarer</title>
<script type="text/javascript" src="./JS/homepage.js"></script>
<!-- <link rel="stylesheet" href="./CSS/index1.css"> -->
</head>
<body style="background-color:#5CDB95">
<form name="hp" style="font-family:Josefin Sans;font-size:35px;">

	<h1 style="font-family:Josefin Sans Light; font-size:90px ; color:#05386B;display: inline">Wayfarer</h1>
	<hr/>
	<h3 style="text-align:right"><a href="log_in.html" style="font-family:Josefin Sans ; font-size:35px ; color:#05386B;
	text-decoration:none">Log In</a></h3>
	<table style="border:1px color:#5CDB95" align="center" >
	<tr>
	<td>
	  <!--
		=============================City Selection==================================================
		-->
	  <h1 style="font-family:Josefin Sans ; font-size:35px ; color:#05386B;"
	  >Select Your City :</h1>

		<?php
		$options ="";
		// $filename  = "./Data/city.txt";
		// $eachlines = file($filename, FILE_IGNORE_NEW_LINES);
		// $select    = "<select name='city' style='font-family:Josefin Sans ; font-size:35px ;
		// color:#05386B;background-color:#5CDB95'>";
		// foreach($eachlines as $lines)
		// {
		// 		$options .= "<option value='$lines'>$lines</option>";
		// }
		// $select .= $options . "</select>";
		// echo $select;

		$select = "<select name='city' onclick='checkInArea()' style='font-family:Josefin Sans ; font-size:35px ;
		color:#05386B;background-color:#5CDB95'>
		<option value='city'>City</option>";

		$conn1 = mysqli_connect("localhost", "root", "","wayfarer");
		$sql1 = "SELECT * FROM city where c_id=14";
		$result1 = mysqli_query($conn1, $sql1)or die(mysqli_error($conn1));
		while($row1 = mysqli_fetch_assoc($result1)) {
				 $options .= "<option value='" . $row1["c_name"] . "'>" . $row1["c_name"] . "</option>";
		}
		$select .= $options . "</select>";
		echo $select;
		?>
		<div id="wrn1" style="display:inline;font-size:20px;color:#b30000"></div>

	  <!--
		=============================Area Selection==================================================
		-->
	  <h1 style="font-family:Josefin Sans ; font-size:35px ; color:#05386B;"
	  >Select Your Area :</h1>
		<div id="sa">
		<select name='area' onclick='checkInArea()' style='font-family:Josefin Sans ; font-size:35px ;
		 color:#05386B;background-color:#5CDB95'>>
			<option value="area">Area</option>
		</select>
		</div>
		<div id="wrn2" style="display:inline;font-size:20px;color:#b30000"></div>

		<!-- <?php
		//$options ="";
		// $filename  = "./Data/type.txt";
		// 		$eachlines = file($filename, FILE_IGNORE_NEW_LINES);
		// 		$select    = "<select name='type' style='font-family:Josefin Sans ; font-size:35px ;
		// 		color:#05386B;background-color:#5CDB95'>";
		// 		foreach($eachlines as $lines)
		// 		{
		// 				$options .= "<option value='$lines'>$lines</option>";
		// 		}
		// 		$select .= $options . "</select>";
		// 		echo $select;
		?> -->

	  <!--
	  =============================Type Selection==================================================
	  -->
	  <h1 style="font-family:Josefin Sans ; font-size:35px ; color:#05386B;"
	  >Select Type :</h1>


		<?php
		$options ="";
		$select = "<select name='type' onclick='showALLByType()' style='font-family:Josefin Sans ; font-size:35px ;
		color:#05386B;background-color:#5CDB95'>
		<option value='type'>Type</option>";

		$conn2 = mysqli_connect("localhost", "root", "","wayfarer");
		$sql2 = "SELECT * FROM type";
		$result2 = mysqli_query($conn2, $sql2)or die(mysqli_error($conn2));
		while($row2 = mysqli_fetch_assoc($result2)) {
				 $options .= "<option value='" . $row2["t_name"] . "'>" . $row2["t_name"] . "</option>";
		}
		$select .= $options . "</select>";
		echo $select;
		?>
		<div id="wrn3" style="display:inline;font-size:20px;color:#b30000"></div>

		<?php
		// $options ="";
		// // $filename  = "./Data/type.txt";
		// // $eachlines = file($filename, FILE_IGNORE_NEW_LINES);
		// // $select    = "<select name='type' style='font-family:Josefin Sans ; font-size:35px ;
		// // color:#05386B;background-color:#5CDB95'>";
		// // foreach($eachlines as $lines)
		// // {
		// // 		$options .= "<option value='$lines'>$lines</option>";
		// // }
		// // $select .= $options . "</select>";
		// // echo $select;
		// ?>


	  <br/><br/>


	  <!--
	  =============================Showing Information==================================================
	  -->

		<div id="view" style="font-family:Josefin Sans ; font-size:35px ;color:#05386B;display:inline"></div>

	<br/><br/>

	</td>
	</tr>
	</table>

</form>
</body>
</html>
