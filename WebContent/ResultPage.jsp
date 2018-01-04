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

		<form method="GET" action="TimsServlet">
			<div class="box">
			<h1 style="color:#3348A7">TIMS RESULT UPDATE</h1>
			<table class="tab"  align="center">
			<tr> <td>Cisco ID:</td> <td><input type="text" id ="cec" name="cec" ></td> </tr>
			<tr> <td>Test Case ID:</td> <td><input type="text" id ="tid" name="tid"></td> </tr>
			<tr> <td>Test Case Title :</td> <td><input type="text" id = "test" name="title"></td><td><input type="button" id ="get" value = "Get Title"/></td> </tr>
			<tr> <td>Test Status:</td> <td><select name="status">
			  <option value="passed">passed</option>
			  <option value="failed">failed</option>
			  <option value="pending">pending</option>
			  <option value="blocked">blocked</option>
			  <option value="passx">Passed with Exception</option>
			</select></td></tr>			
			<tr><td><input type="Submit" value="Submit"></td>
			</table>
			</div>	  
		</form>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
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

$(document).ready(function(){
		$('#get').click(function(){
			
			var tid = $('#tid').val();
			var cec = $('#cec').val();
			$.ajax({
				type : 'POST',
				data : {
					tid : tid,
					cec :cec,
					action : 'demo'
				},
				url :  'AjaxServlet',
				success : function(result){
					$('#test').val(result);
				}
				
				
			});
		});
		
	});


</script>
</body>
</html>