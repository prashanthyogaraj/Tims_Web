<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link href='ResultPage.css' rel='stylesheet' >

<form>
<div class="box">
<h1 style="color:#3348A7">TIMS RESULT UPDATE</h1>

<option class="option">OS Compat</option>
<div class="panel">
<table class="tab"  align="center">
<tr> <td>Cisco ID:</td> <td><input type="text" ></td> </tr>
<tr> <td>Test Case ID:</td> <td><input type="text"></td> </tr>
<tr> <td>Test Case Title :</td> <td><input type="text" ></td> </tr>
<tr> <td>Test Status:</td> <td><select>
  <option value="pass">Pass</option>
  <option value="fail">Failed</option>
  <option value="block">Blocked</option>
</select></td> </tr>
<td><button type="Submit" value="Submit">Submit</button></td>
</table>
</div>
 <br> 
<option class="option">VIC Regression</option>
<div class="panel">
<table class="tab"  align="center">
<tr> <td>Cisco ID:</td> <td><input type="text" ></td> </tr>
<tr> <td>Test Case ID:</td> <td><input type="text"></td> </tr>
<tr> <td>Test Case Title:</td> <td><input type="text" ></td> </tr>
<tr> <td>Test Status:</td> <td><select>
  <option value="pass">Pass</option>
  <option value="fail">Failed</option>
  <option value="block">Blocked</option>
</select> </td> </tr>
<td><button type="Submit" value="Submit">Submit</button></td>
</table>
</div> 
<br>

</div> <!-- End Box -->
 
</form>

<script>
var acc= document.getElementsByClassName("option");
var i;
for(i = 0; i < acc.length; i++) {
<!--alert(i+"ho"+acc.length);
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight){
      panel.style.maxHeight = null;
	<!--  alert(i);
    } else {
     panel.style.maxHeight = panel.scrollHeight + "px"; 
	     <!--panel.style.maxHeight = "600px";
	  <!--alert(i);
    } 
  });
}

</script>
</body>
</html>