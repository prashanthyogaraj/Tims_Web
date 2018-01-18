<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<link href='ResultPage.css' rel='stylesheet'>

	<form name="landing" method="POST" action="TimsServlet">
		<div class="box1">
			<h1 style="color:#3348A7">TIMS UPDATE</h1>
			<br>
			<!-- onclick="document.landing.submit();" -->
			<input type='submit' value="Test Case Upload" name="Test Case Upload"
				class="homebutton" /> <br> <br> <input type='submit'
				value="Test Result Upload" name="Test Reuslt Upload"
				class="homebutton" /> <br> <br>
					<input type='submit' value="Upload All result" name="Upload All Result"
				class="homebutton" /> 



		</div>
		<!-- End Box -->

	</form>
</body>
</html>