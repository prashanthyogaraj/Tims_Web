<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<link href='ResultPage.css' rel='stylesheet' >

		<form method="POST" action="FileuploadServlet" enctype="multipart/form-data">

		<div class="box">
		<h1 style="color:#3348A7">TIMS TESTCASE UPDATE</h1>
		
			<option class="option" name="compat" >OS Compat</option>
				<div class="panel">
				<br>
				<table class="tab"  align="center">
				<tr> <td>File:</td>                <td><input type="file" name = "osfile"  ></td> </tr>
				<tr> <td>Test Case Folder ID:</td> <td><input type="text" name="osctestid"></td> </tr>
				<tr> <td>Test Result ID :</td>     <td><input type="text" name="oscresultid"></td> </tr>
				<tr> <td>CEC ID :</td>     <td><input type="text" name="oscec"></td> </tr>
				<tr> <td><input type="submit" ></td></tr>
				</table>
				<br>
				</div>
			<br> 
			
			<option class="option" name="regression">VIC Regression</option>
				<div class="panel">
				<br>
				<table class="tab"  align="center">
				<tr> <td>File:</td>                <td><input type="file" name="vicfile" ></td> </tr>
				<tr> <td>Test Case Folder ID:</td> <td><input type="text" name="victestid"></td> </tr>
				<tr> <td>Test Result ID :</td>     <td><input type="text" name="vicresultid"></td> </tr>
				<tr> <td>CEC ID :</td>     <td><input type="text" name="viccec"></td> </tr>
				<tr> <td><input type="submit" ></td></tr>
				</table>
				<br>
				</div> 
			<br>

		</div> <!-- End Box -->
		</form>

		<script>
		var acc= document.getElementsByClassName("option");
		var i;
		for(i = 0; i < acc.length; i++)
		{
		  acc[i].addEventListener("click", function() {
			this.classList.toggle("active");
			var panel = this.nextElementSibling;
			if (panel.style.maxHeight){
			  panel.style.maxHeight = null;
			} else {
			 panel.style.maxHeight = panel.scrollHeight + "px"; 
			} 
		  });
		}
		</script>
</body>
</html>