<?PHP
//==========================================================Insert_Input_Validation===============================================================================
function insertValidation()
{
  GLOBAL $iname; GLOBAL $itid; GLOBAL $itid2; GLOBAL $iaid; GLOBAL $iaid2; GLOBAL $iaddress; GLOBAL $iphone;
  GLOBAL $iphone2; GLOBAL $imail; GLOBAL $iweb; GLOBAL $itmp; GLOBAL $itarget; GLOBAL $iext; GLOBAL $iname;

  $validation ="ok";

  if(empty($iname)||empty($itid)||empty($iaid)||empty($iaddress)||empty($iphone)||empty($imail)||empty($iweb))
  {
  	echo "<h2>"."You must fill all the fields for inserting a place"."</h2>";
  	//echo "<a href='../reg_form.html'>Go to back</a> ";
  }
  else if(!ctype_digit($itid))
  {
    //==================Checking_Type_ID=================================
    foreach ($itid2 as $testcase2)
    {
        if (ctype_digit($testcase2) == false) //Checks if all of the characters in the provided text are numerical
        {
        echo "<h2>"."Invalid. Type ID should contains only digits"."</h2>";
        }
      }
    }
    else if(!ctype_digit($iaid))
    {
    //==================Checking_Area_ID=================================
    foreach ($iaid2 as $testcase3)
    {
        if (ctype_digit($testcase3) == false) //Checks if all of the characters in the provided text are numerical
        {
        echo "<h2>"."Invalid. Area ID should contains only digits"."</h2>";
        }
      }
    }
    else if(!ctype_digit($iphone))
    {
    //==================Checking_Phone_Number=================================
    foreach ($iphone2 as $testcase4)
    {
        if (ctype_digit($testcase4) == false) //Checks if all of the characters in the provided text are numerical
        {
        echo "<h2>"."Invalid. Phone Number should contains only digits"."</h2>";
        }
      }
    }
//==================Checking_EMAIL=================================
    else if (filter_var($imail , FILTER_VALIDATE_EMAIL) == false)
    {
      $emailErr = "Invalid email format";
      echo "<h2>"."Invalid email"."</h2>";
    }
    else if($itmp == "")
    {
      echo "<h2>"."You must choose an image file"."</h2>";
    }
    else if($iext != "jpeg" && $iext != "jpg" && $iext != "png")
    {
      echo "<h2>"."You must choose a valid image file"."</h2>";
      // echo "<br/>";
      // echo $itarget;echo "<br/>";
      // echo $iname;echo "<br/>";
      // echo $itmp;echo "<br/>";
      // echo $iext;
    }
    else if(file_exists($itarget))
    {
	     echo "<h2>"."File Already Exist"."</h2>";
    }
    else
    {
      return $validation;
    }
  }

  //==========================================================Update_Input_Validation===============================================================================
  function updateValidation()
  {
    $validation2 ="ok";

    GLOBAL $pid; GLOBAL $upname; GLOBAL $uptid; GLOBAL $uptid2; GLOBAL $upaid; GLOBAL $upaid2;GLOBAL $upaddress;
    GLOBAL $upphone; GLOBAL $upphone2; GLOBAL $upmail; GLOBAL $upweb;
    GLOBAL $uptmp; GLOBAL $uptarget; GLOBAL $upext; GLOBAL $uplname;

    if(empty($pid)||empty($upname)||empty($uptid)||empty($upaid)||empty($upaddress)||empty($upphone)||empty($upmail)||empty($upweb))
    {
    	echo "<h2>"."You must fill all the fields for updating a place"."</h2>";
    }
    else if(!ctype_digit($uptid))
    {
      //==================Checking_type_ID=================================
      foreach ($uptid2 as $testcase5)
      {
          if (ctype_digit($testcase5) == false) //Checks if all of the characters in the provided text are numerical
          {
          echo "<h2>"."Invalid. Type ID should contains only digits"."</h2>";
          }
        }
      }
      else if(!ctype_digit($upaid))
        {
      //==================Checking_Area_ID=================================
      foreach ($upaid2 as $testcase6)
      {
          if (ctype_digit($testcase6) == false) //Checks if all of the characters in the provided text are numerical
          {
          echo "<h2>"."Invalid. Area ID should contains only digits"."</h2>";
          }
        }
      }
      else if(!ctype_digit($upphone))
      {
      //==================Checking_Phone_Number=================================
      foreach ($upphone2 as $testcase7)
      {
          if (ctype_digit($testcase7) == false) //Checks if all of the characters in the provided text are numerical
          {
          echo "<h2>"."Invalid. Phone Number should contains only digits"."</h2>";
          }
        }
      }
  //==================Checking_EMAIL=================================
      else if (filter_var($upmail , FILTER_VALIDATE_EMAIL) == false)
      {
        $emailErr = "Invalid email format";
        echo "<h2>"."Invalid email"."</h2>";

      }
      else if($uptmp == "")
      {
        echo "<h2>"."You must choose an image file"."</h2>";
      }
      else if($upext != "jpeg" && $upext != "jpg" && $upext != "png")
      {
        echo "<h2>"."You must choose a valid image file"."</h2>";
        // echo "<br/>";
        // echo $uptarget;echo "<br/>";
        // echo $uplname;echo "<br/>";
        // echo $uptmp;echo "<br/>";
        // echo $upext;
      }
      else if(file_exists($uptarget))
      {
  	     echo "<h2>"."File Already Exist"."</h2>";
      }
      else
      {
        return $validation2;
      }

  }
  //==========================================================Delete_Input_Validation===============================================================================

  function deleteValidation()
  {
    GLOBAL $dpid;
    $validation3 ="ok";

    if(empty($dpid))
    {
      echo "<h2>"."You must insert Place ID for deleting a place"."</h2>";
    }
    else
    {
      return $validation3;
    }
  }

  //==========================================================Request_Input_Validation===============================================================================
  function requestValidation()
  {
    GLOBAL $rname; GLOBAL $rcity; GLOBAL $rarea; GLOBAL $raddress;
    $validation4 ="ok";

    if(empty($rname) || empty($rcity) || empty($rarea) || empty($raddress) )
    {
      echo "<h2>"."You must fill all the fields for requesting a place"."</h2>";
    }
    else
    {
      return $validation4;
    }
  }




?>
