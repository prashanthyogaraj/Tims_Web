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
			<tr> <td>Cisco ID:</td> <td><input type="text" id ="cec" name="cec" required/></td> </tr>
			<tr> <td>Test Case ID:</td> <td><input type="text" id ="tid" name="tid" required/></td> </tr>
			<tr> <td>Test Case Title :</td> <td><input type="text" id = "test" name="title" required/></td><td><input type="button" id ="get" value = "Get Title"/></td> </tr>
			<tr> <td>Test Status:</td> <td><select name="status" id="status" onchange="enableBugTextBox()">
			  <option value="passed">passed</option>
			  <option value="failed">failed</option>
			  <option value="pending">pending</option>
			  <option value="blocked">blocked</option>
			  <option value="passx">Passed with Exception</option>
			</select> </td></tr>
	<!--  	<tr><td><label id="remarks" >Remarks:</label></td><td><input type="text" id="remark" name="remark" ></td></tr>  --> 
			<tr><td><label id="buglabel" hidden>Bug Id:</label></td><td><input type="text" id="bug" name="bug" hidden></td></tr> 			 					
			<tr><td><input type="Submit" value="Submit"></td>
			</table>
			</div>	  
		</form>
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">

function enableBugTextBox(){
	var option =  document.getElementById("status").value;
	var name =  document.getElementById("buglabel").innerHTML;
	if((option=="failed")||(option=="passx")){
		//alert("inside if "+name);
		// document.getElementById("bug").disabled=false;
		 document.getElementById("buglabel").style.display="block";
		 document.getElementById("bug").style.display="block";
		 document.getElementById("bug").value= "";
		 
	}
	else{
		document.getElementById("buglabel").style.display="none";
		document.getElementById("bug").style.display="none";
		document.getElementById("bug").value= "";
	}
	
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