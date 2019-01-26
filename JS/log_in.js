
var v = false;
function checkUsername(c1)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c1.value = c1.value.replace(regex , "");
		var wrn = document.getElementById("wrn1");
		if( c1.value.length < 1 || c1.value == "" )
		{
			 wrn.innerHTML = "*Enter Username";
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

function checkPassword(c2)
{
	var wrn = document.getElementById("wrn2");
	var format = /^[0-9]+$/gi;
	if( c2.value == "")
	{
		 wrn.innerHTML = "*Enter Password";
		 c2.style.borderColor= "red";
		 v = false;
	}
	else if(!(c2.value.match(format)))
	 {
		 wrn.innerHTML = "*Number should contains only digit";
		 c2.style.borderColor= "red";
		 v = false;
	 }
	 else if (c2.value.length < 4)
	 {
		 wrn.innerHTML = "*Atleast 4 digits";
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

function allOK()
{
	checkUsername(document.logfm.luname);
  checkPassword(document.logfm.lpass);
	return v;
}
