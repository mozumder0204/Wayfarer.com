//==========================================Show All Information==========================================
xmlhttp = new XMLHttpRequest();
function viewInfo()
{

	str1 = document.afm.search.value;
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			m=document.getElementById("view");
			m.innerHTML=xmlhttp.responseText;
		}
	};
	var url="./PHP/admin_work2.php?" + "table=" + str1;
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}

//==========================================Insert_Validation==========================================
var v = false;
function checkiName(c1)
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

function checkiType(c2)
{
	var wrn = document.getElementById("wrn2");
	var format1 = /^[0-9]+$/gi;
	if( c2.value == "")
	{
		 wrn.innerHTML = "*Enter Type ID";
		 c2.style.borderColor= "red";
		 v = false;
	}
	else if(!(c2.value.match(format1)))
	 {
		 wrn.innerHTML = "*ID should contains only digit";
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

function checkiArea(c3)
{
	var wrn = document.getElementById("wrn3");
	var format2 = /^[0-9]+$/gi;
	if( c3.value == "")
	{
		 wrn.innerHTML = "*Enter Area ID";
		 c3.style.borderColor= "red";
		 v = false;
	}
	else if(!(c3.value.match(format2)))
	 {
		 wrn.innerHTML = "*ID should contains only digit";
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

function checkiAddress(c4)
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

function checkiPhone(c5)
{
	var wrn = document.getElementById("wrn5");
	var format3 = /^[0-9]+$/gi;
	if( c5.value == "")
	{
		 wrn.innerHTML = "*Enter Phone Number";
		 c5.style.borderColor= "red";
		 v = false;
	}
	else if(!(c5.value.match(format3)))
	 {
		 wrn.innerHTML = "*Number should contains only digit";
		 c5.style.borderColor= "red";
		 v = false;
	 }
	 else if (c5.value.length < 11)
	 {
		 wrn.innerHTML = "*Number should be 11 digits";
		 c5.style.borderColor= "red";
		 v = false;
	 }
	else
	{
		wrn.innerHTML = "";
		c5.style.borderColor= "";
		v = true;
	}
}

function checkiMail(c6)
{
	var wrn = document.getElementById("wrn6");
	var format4 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(!(c6.value.match(format4)))
	{
		wrn.innerHTML = "*Enter Valid Email";
		c6.style.borderColor= "red";
		v = false;
	}
	else
	{
		wrn.innerHTML = "";
		c6.style.borderColor= "";
		v = true;
	}
}

function checkiWeb(c7)
{
		var wrn = document.getElementById("wrn7");
		if( c7.value.length < 1 || c7.value == "" )
		{
			 wrn.innerHTML = "*Enter Web Address";
			 c7.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c7.style.borderColor= "";
			v = true;
		}
}

function checkiFile(c8)
{
		 var wrn = document.getElementById("wrn8");

    var fileName = c8.value;
    var ext = fileName.substring(fileName.lastIndexOf('.') + 1);

    if(ext != "png" && ext != "PNG" && ext != "JPEG" && ext != "jpeg" && ext != "jpg" && ext != "JPG")
    {
        wrn.innerHTML = "*Select an Valid Image";
        c8.style.borderColor= "red";
        v = false;
    }
    else
    {
      wrn.innerHTML = "";
      c8.style.borderColor= "";
      v = true;
    }
}

function allOK()
{
	checkiName(document.afm.iname);
	checkiType(document.afm.itid);
	checkiArea(document.afm.iaid);
	checkiAddress(document.afm.iaddress);
	checkiPhone(document.afm.iphone);
	checkiMail(document.afm.imail);
	checkiWeb(document.afm.iweb);
	checkiFile(document.afm.fileToUpload1);
	return v;
	}

//==========================================Update_Validation==========================================

function checkupPid(c9)
{
	var wrn = document.getElementById("wrn9");
	var format5 = /^[0-9]+$/gi;
	if( c9.value == "")
	{
		 wrn.innerHTML = "*Enter Place ID";
		 c9.style.borderColor= "red";
		 v = false;
	}
	else if(!(c9.value.match(format5)))
	 {
		 wrn.innerHTML = "*ID should contains only digit";
		 c9.style.borderColor= "red";
		 v = false;
	 }
	else
	{
		wrn.innerHTML = "";
		c9.style.borderColor= "";
		v = true;
	}
}

function checkupName(c10)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c10.value = c10.value.replace(regex , "");
		var wrn = document.getElementById("wrn10");
		if( c10.value.length < 1 || c10.value == "" )
		{
			 wrn.innerHTML = "*Enter Place Name";
			 c10.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c10.style.borderColor= "";
			v = true;
		}
}

function checkupType(c11)
{
	var wrn = document.getElementById("wrn11");
	var format6 = /^[0-9]+$/gi;
	if( c11.value == "")
	{
		 wrn.innerHTML = "*Enter Type ID";
		 c11.style.borderColor= "red";
		 v = false;
	}
	else if(!(c11.value.match(format6)))
	 {
		 wrn.innerHTML = "*ID should contains only digit";
		 c11.style.borderColor= "red";
		 v = false;
	 }
	else
	{
		wrn.innerHTML = "";
		c11.style.borderColor= "";
		v = true;
	}
}

function checkupArea(c12)
{
	var wrn = document.getElementById("wrn12");
	var format7 = /^[0-9]+$/gi;
	if( c12.value == "")
	{
		 wrn.innerHTML = "*Enter Area ID";
		 c12.style.borderColor= "red";
		 v = false;
	}
	else if(!(c12.value.match(format7)))
	 {
		 wrn.innerHTML = "*ID should contains only digit";
		 c12.style.borderColor= "red";
		 v = false;
	 }
	else
	{
		wrn.innerHTML = "";
		c12.style.borderColor= "";
		v = true;
	}
}

function checkupAddress(c13)
{
		var regex = /[^a-z,A-Z,0-9, ,]/gi;
		c13.value = c13.value.replace(regex , "");
		var wrn = document.getElementById("wrn13");
		if( c13.value.length < 1 || c13.value == "" )
		{
			 wrn.innerHTML = "*Enter Address";
			 c13.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c13.style.borderColor= "";
			v = true;
		}
}

function checkupPhone(c14)
{
	var wrn = document.getElementById("wrn14");
	var format8 = /^[0-9]+$/gi;
	if( c14.value == "")
	{
		 wrn.innerHTML = "*Enter Phone Number";
		 c14.style.borderColor= "red";
		 v = false;
	}
	else if(!(c14.value.match(format8)))
	 {
		 wrn.innerHTML = "*Number should contains only digit";
		 c14.style.borderColor= "red";
		 v = false;
	 }
	 else if (c14.value.length < 11)
	 {
		 wrn.innerHTML = "*Number should be 11 digits";
		 c14.style.borderColor= "red";
		 v = false;
	 }
	else
	{
		wrn.innerHTML = "";
		c14.style.borderColor= "";
		v = true;
	}
}

function checkupMail(c15)
{
	var wrn = document.getElementById("wrn15");
	var format9 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	if(!(c15.value.match(format9)))
	{
		wrn.innerHTML = "*Enter Valid Email";
		c15.style.borderColor= "red";
		v = false;
	}
	else
	{
		wrn.innerHTML = "";
		c15.style.borderColor= "";
		v = true;
	}
}

function checkupWeb(c16)
{
		var wrn = document.getElementById("wrn16");
		if( c16.value.length < 1 || c16.value == "" )
		{
			 wrn.innerHTML = "*Enter Web Address";
			 c16.style.borderColor= "red";
			 v = false;
		}
		else
		{
			wrn.innerHTML = "";
			c16.style.borderColor= "";
			v = true;
		}
}

function checkupFile(c17)
{
		 var wrn = document.getElementById("wrn17");

    var fileName2 = c17.value;
    var ext2 = fileName2.substring(fileName2.lastIndexOf('.') + 1);

    if(ext2 != "png" && ext2 != "PNG" && ext2 != "JPEG" && ext2 != "jpeg" && ext2 != "jpg" && ext2 != "JPG")
    {
        wrn.innerHTML = "*Select an Valid Image";
        c17.style.borderColor= "red";
        v = false;
    }
    else
    {
      wrn.innerHTML = "";
      c17.style.borderColor= "";
      v = true;
    }
}

function allOK2()
{
	checkupPid(document.afm.pid);
	checkupName(document.afm.upname);
	checkupType(document.afm.uptid);
	checkupArea(document.afm.upaid);
	checkupAddress(document.afm.upaddress);
	checkupPhone(document.afm.upphone);
	checkupMail(document.afm.upmail);
	checkupWeb(document.afm.upweb);
	checkupFile(document.afm.fileToUpload2);
	return v;
	}

	//==========================================Delete_Validation==========================================


	function checkDeleteID(c18)
	{
		var wrn = document.getElementById("wrn18");
		var format10 = /^[0-9]+$/gi;
		if( c18.value == "")
		{
			 wrn.innerHTML = "*Enter a Place ID";
			 c18.style.borderColor= "red";
			 v = false;
		}
		else if(!(c18.value.match(format10)))
		 {
			 wrn.innerHTML = "*ID should contains only digit";
			 c18.style.borderColor= "red";
			 v = false;
		 }
		else
		{
			wrn.innerHTML = "";
			c18.style.borderColor= "";
			v = true;
		}
	}

	function allOK3()
	{
		checkDeleteID(document.afm.dpid);

		return v;
		}
