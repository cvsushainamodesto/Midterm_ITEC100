<!DOCTYPE html>
<html>
<head>

	<!--Title-->
	<title>ACT#4 | MAIN FORM</title>
	<!--CSS Source-->
	<link rel="stylesheet" type="text/css" href="style.css">
	<!--JQuery Library-->
	<script src="js/jquery.js"></script>
	<!--JS Source-->
	<script src="js/account.js"></script>
	<!--PHP Require (Authentication)-->
	<?php require 'function/authentication.php'; ?>

</head>
<body>

	
		
			<fieldset class="second_page">
				
				  <center><label style="font-style: bold; color: green; position: absolute; top: 20%; left: 22%; font-size: 48px;">
			SUCCESSFULLY LOGIN</label></center> <br>
					<form action="function/account.php" method="post">
						
						<a href="event_list.php"  style="font-style: underline; color: blue; position: absolute; top: 70%; left: 12%; font-size: 28px;">ACTIVITY LOGS DATABASE</a>
						<button name="logout">LOG OUT</button>
					</form>
				</div>
			</fieldset>
		</div>
	</div>

	<!-----------Modal Message Change Password / Update Password-------------->
	<div id="modal_message_forgot" class="modal_message">
		<div class="modal_message_content" id="modal_message_content_forgot">
		  	<div class="modal_message_header">
		  		<span id="close">&times;</span>
		    	<h2>RESET PASSWORD</h2>
		  	</div>
		  	<!-----------Form-------------->
		  	<form action="function/account.php" method="post">
				<div class="modal-body-forgot" id="forgot_dialog_content">
					<!-----------Dynamic Content-------------->		
				</div>
				<div class="modal_message_footer">
				    <center><button class="csub" id="submit_forgot" name="submit_change" onclick="validate_pass()">Submit</button><center>
		 	 	</div>
		 	</form>
			<!-----------End of Form-------------->
		</div>
	</div>
	<!-----------End of Modal Change Password -------------->

	<!-----------Modal Message-------------->
	<div id="modal_message" class="modal_message">
		<div class="modal_message_content">
		  	
			 <div class="modal_message_body">
			  	<center><label id="msg"></label></center>
			 </div>
			<div class="modal_message_footer">
				<form action="function/account.php" method="post">
			  	<center><button class="ok" id="ok" name="ok_login">OKAY</button></center>
			  	</form>
		 	 </div>
		</div>
	</div>
	<!-----------End of Modal Message-------------->

	<!-----------Modal Message LOG-------------->
	
	<!-----------End of Modal Message LOG-------------->

<?php

// IF CHANGE PASS IS CLICKED (SHOW MODAL UPDATE PASS)
if (isset($_SESSION['show_modal_change_pass']) && $_SESSION['show_modal_change_pass'] == 'true') {
	echo '<script>show_forgot("Password","Confirm Password");</script>';
	echo '<script>submit_forgot_function("false")</script>';
	$_SESSION['show_modal_change_pass'] = 'false';
}
// IF SUCESS PASSWORD CHANGE
else if (isset($_SESSION['success']) && $_SESSION['success'] == 'true') {
	echo '<script>show_message("Update Success","block");</script>';
	$_SESSION['success'] ='false';
}
// SHOW ACTIVITY LOGS
else if (isset($_SESSION['show_log']) && $_SESSION['show_log'] == 'true') {
	if (isset($_SESSION['search']) && $_SESSION['search'] =='true') {
		echo "<script>document.getElementById('search_area').style = 'display:block';</script>";
		$_SESSION['search'] ='false';
	}
	echo '<script>document.getElementById("modal_message_log").style = "display:block";</script>';
	for ($i=sizeof($_SESSION['user_array'])-1 ; $i >= 0  ; $i-- ) { 
			echo '<script>show_log("'.$_SESSION['user_array'][$i].'","'.$_SESSION['action_array'][$i].'","'.$_SESSION['time_array'][$i].'")</script>';
	}
	$_SESSION['show_log'] = 'false';
}


?>


</body>
</html>