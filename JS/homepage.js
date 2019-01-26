
xmlhttp = new XMLHttpRequest();

function checkInArea()
{
	var wrn = document.getElementById("wrn1");
	str1 = document.hp.city.value;
	if(str1 == "city")
	{
		document.hp.area.disabled=true;
		wrn.innerHTML = "*Select City";
		document.hp.city.style.borderColor= "red";
	}
	else {
		document.hp.area.disabled=false;
		document.hp.city.style.borderColor= "";
		wrn.innerHTML = "";

		str2 = document.hp.city.value;
		xmlhttp.onreadystatechange = function() {
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				m=document.getElementById("sa");
				m.innerHTML=xmlhttp.responseText;
			}
		};
		var url="./PHP/homepage_work.php?" + "c_name=" + str2  + "&" + "check=" + "checkInArea"  ;
		xmlhttp.open("GET", url, true);
		xmlhttp.send();
	}
}

function showALLByArea()
{
	var wrn = document.getElementById("wrn2");
	document.hp.area.style.borderColor= "";
	wrn.innerHTML = "";
	document.hp.type.disabled=false;



	str1 = document.hp.area.value;
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			m=document.getElementById("view");
			m.innerHTML=xmlhttp.responseText;
		}
	};
	var url="./PHP/homepage_work.php?" + "a_name=" + str1 + "&" + "check=" + "showALLByArea"  ;
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}

function showALLByType()
{
	var wrn = document.getElementById("wrn2");
	str1 = document.hp.area.value;
	if(str1 == "area")
	{
		document.hp.type.disabled=true;
		wrn.innerHTML = "*Select Area";
		document.hp.area.style.borderColor= "red";
	}

	str1 = document.hp.area.value;
	str2 = document.hp.type.value;
	xmlhttp.onreadystatechange = function() {
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
			m=document.getElementById("view");
			m.innerHTML=xmlhttp.responseText;
		}
	};
	var url="./PHP/homepage_work.php?" + "a_name=" + str1 +  "&" + "t_name=" + str2 + "&" + "check=" + "showALLByType"  ;
	xmlhttp.open("GET", url, true);
	xmlhttp.send();
}

function showBySpecific()
{
	str1 = document.hp.city.value;
	str2 = document.hp.area.value;
	str3 = document.hp.type.value;

	var wrn1 = document.getElementById("wrn1");
	var wrn2 = document.getElementById("wrn2");
	var wrn3 = document.getElementById("wrn3");

	 if(str1 == "city")
	{
		document.hp.specific.disabled=true;
		document.hp.specific.value="";
		wrn1.innerHTML = "*Select City";
		document.hp.city.style.borderColor= "red";

	}
	else if (str2 == "area")
	{
		document.hp.specific.disabled=true;
		document.hp.specific.value="";
		wrn2.innerHTML = "*Select Area";
		document.hp.area.style.borderColor= "red";

	}
	else if (str3 == "type")
	{
		document.hp.specific.disabled=true;
		document.hp.specific.value="";
		wrn3.innerHTML = "*Select Type";
		document.hp.type.style.borderColor= "red";

	}
	else
	{
		document.hp.specific.disabled=false;
		wrn1.innerHTML = "";
		document.hp.city.style.borderColor= "";
		wrn2.innerHTML = "";
		document.hp.area.style.borderColor= "";
		wrn3.innerHTML = "";
		document.hp.type.style.borderColor= "";
	}
}
