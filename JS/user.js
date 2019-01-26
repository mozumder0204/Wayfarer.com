var v = false;
function checkName(c1)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c1.value = c1.value.replace(regex , "");
		var wrn = document.getElementById("wrn1");
		if( c1.value.length < 1 || c1.value == "" )
		{
			 wrn.innerHTML = "*Enter Place Name";
			 c1.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c1.style.borderColor= "";
			v = true;
		}
}

function checkCity(c2)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c2.value = c2.value.replace(regex , "");
		var wrn = document.getElementById("wrn2");
		if( c2.value.length < 1 || c2.value == "" )
		{
			 wrn.innerHTML = "*Enter City";
			 c2.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c2.style.borderColor= "";
			v = true;
		}
}

function checkArea(c3)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c3.value = c3.value.replace(regex , "");
		var wrn = document.getElementById("wrn3");
		if( c3.value.length < 1 || c3.value == "" )
		{
			 wrn.innerHTML = "*Enter Area";
			 c3.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c3.style.borderColor= "";
			v = true;
		}
}

function checkAddress(c4)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c4.value = c4.value.replace(regex , "");
		var wrn = document.getElementById("wrn4");
		if( c4.value.length < 1 || c4.value == "" )
		{
			 wrn.innerHTML = "*Enter Address";
			 c4.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c4.style.borderColor= "";
			v = true;
		}
}

function allOK()
{
	checkName(document.ufm.rname);
	checkCity(document.ufm.rcity);
	checkArea(document.ufm.rarea);
	checkAddress(document.ufm.raddress);

	return v;
}
