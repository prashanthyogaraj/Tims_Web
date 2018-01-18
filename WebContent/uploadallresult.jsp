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
			<form method="POST" action="uploadallresult" enctype="multipart/form-data">

		<div class="box2">
		<h1 style="color:#3348A7">Upload All Result</h1>
		
				<table class="tab"  align="center">
				<tr> <td>File:</td>                <td><input type="file" name = "file"  ></td> </tr>
				<tr> <td>CEC ID :</td>     <td><input type="text" name="cecid"></td> </tr>
				<tr> <td><input type="submit" ></td></tr>
				</table>
				<br>
				</div>
			<br> 	


		</form>
</body>
</html>