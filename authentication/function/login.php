<!DOCTYPE html>
<html>
<head>

	<!--Title-->
	<title> LOGIN</title>
	<!--CSS Source-->
	<link rel="stylesheet" type="text/css" href="style.css">
	<!--JQuery Library-->
	<script src="../js/jquery.js"></script>
	<!--JS Source-->
	<script src="../js/account.js"></script>
	<!--Start PHP Session-->
	<?php session_start(); ?>
	
</head>
<body>

	<!-----------Login Box-------------->
	<div class="login_container">
	<fieldset class="loginBox">
			<center><label style="font-style: bold; color: green; position: absolute; top: 20%; left: 47%;">
			LOGIN FORM</label></center> <br>
			<!-----------Form-------------->
	        <form action="../function/verify.php" method="post">
			        <div id="login_input">
			        	<hr style="background-color: gray; height: 2px;">
			        	<label class="label_pointer" for="user">Username</label>
			        	<input type="text" name ="user" id="user" placeholder="Enter your username" required>
			        	<label class="label_pointer" for="pass">Password</label>
				    	<input type="password" name="pass" id="pass" placeholder="Enter your password" required>
			        </div>
			         <button id="submit_login" name="submit_login" value="true" >Log in</button>
				   <p id="forgot" style=" position: absolute; top: 63%; left: 31%; font-size: 14px; color: green">Forgot Password? Click here. </p>
				    <p id="register" style="position: absolute; top: 64%; left: 42%; font-size: 14px; color: green">Don't have an account ? <a name="ha" href="register.php" >Register Here</a></p>
				   
				   
				   <br>
	        </form>
	        <!-----------End of Form-------------->   
	</fieldset>
	</div>
	<!-----------End of Login Box-------------->

	<!-----------Modal Authentication Code-------------->
	<div id="modal" class="modal">
		<div class="modal-content">
		  <div class="modal-header">
		    <span class="close">&times;</span>
		    <h2>AUTHENTICATION</h2>
		  </div>
		  <form action="verify.php" method="post">
			  <div class="modal-body">
			  	<table>
			  		<tr>
			  			<td><label for = "ver">Code :</label> </td>
			  			<td><input type="text" name="ver" id="ver" placeholder="Enter Authentication Code"></td>
			  		</tr>
			  	</table>
			  </div>
			  <div class="modal-footer">
			    <button class="csub" name="submit_otp">Submit</button>
			    <button class="resend" name="resend">Resend Code</button>
		 	  </div>
		  </form>
		</div>
	</div>
	<!-----------End of Modal Authentication Code-------------->

	<!-----------Modal Message-------------->
	<div id="modal_message" class="modal_message">
		<div class="modal_message_content">
		  	
			 <div class="modal_message_body">
			  	<center><label id="msg"></label></center>
			 
			
				<form action="verify.php" method="post">
			  	<center><button class="ok" id="ok" name="ok_login">OKAY</button></center>
			  	</form>
		 	 </div>
		</div>
	</div>
	<!-----------End of Modal Message-------------->

	<!-----------Modal Message Forgot Password / Update Password-------------->
	<div id="modal_message_forgot" class="modal_message">
		<div class="modal_message_content" id="modal_message_content_forgot">
		  	<div class="modal_message_header">
		  		<span class="close">&times;</span>
		    	<h2>FORGOT PASSWORD</h2>
		  	</div>
		  	<!-----------Form-------------->
		  	<form action="forgot_pass.php" method="post">
				<div class="modal-body-forgot" id="forgot_dialog_content">
					<!-----------Dynamic Content-------------->		
				</div>
				<div class="modal_message_footer">
				    <center><button class="csub" id="submit_forgot" name="submit_forgot" value="true" onclick="validate_pass()">Submit</button><center>
		 	 	</div>
		 	</form>
			<!-----------End of Form-------------->
		</div>
	</div>
	<!-----------End of Modal Forgot Password -------------->

	


<!----------------------------PHP CODES STARTS HERE------------------------------>
<?php 
// IF AUTHENTICATED (LOGIN - AUTHENTICATION SUCCESS) - SHOW SUCCESS
if (isset($_SESSION['authenticated']) && $_SESSION['authenticated'] == 'true') {
	echo '<script>show_message("Login Success!","block");</script>'; 
	$_SESSION['authenticated'] = 'false';
}
// IF FAILED (LOGIN-SUCCESS BUT AUTHENTICATION-FAILED) - SHOW FAILED
else if(isset($_SESSION['authentication_failed']) && $_SESSION['authentication_failed'] == 'true' ){
	echo '<script>show_message("Invalid Authentication Code","block");</script>'; 
	$_SESSION['authentication_failed'] = 'false';
}
// IF LOG-IN FAILED - SHOW USER DOES NOT EXIST
else if (isset($_SESSION['failed']) && $_SESSION['failed'] == 'true') {
	echo '<script>show_message("Wrong Username and Password!","block")</script>';
	$_SESSION['failed'] = 'false';
}
// IF LOG-IN SUCCESS (SHOW AUTHENTICATION CODE)
else if ((isset($_SESSION['code']) && isset($_SESSION['modal_msg'])) && $_SESSION['modal_msg'] == 'true'){
	echo '<script>show_message("Authentication Code : '.$_SESSION['code'].'","block");</script>';
	$_SESSION['modal_msg'] = 'false';
} 
// IF AUTHENTICATION CODE SHOWN (SHOW MODAL AUTHENTICATION INPUT NEXT)
else if (isset($_SESSION['modal']) && $_SESSION['modal'] == 'true' ){ 
	echo '<script>show_modal("block");</script>'; 
	$_SESSION['modal'] = 'false';
}
// IF VALID USER & EMAIL (SHOW UPDATE PASSWORD MODAL)
else if (isset($_SESSION['update_modal']) && $_SESSION['update_modal'] == 'true'){
	echo '<script>show_forgot("Password","Confirm Password");</script>'; 
	echo '<script>submit_forgot_function("false")</script>';
	$_SESSION['update_modal'] = 'false';
}
// IF INVALID USER & EMAIL (SHOW FAILED  MODAL)
else if (isset($_SESSION['forgot_failed']) && $_SESSION['forgot_failed'] == 'true'){
	echo '<script>show_message("Account does not exist!","block");</script>'; 
	$_SESSION['forgot_failed'] = 'false';
}
// IF UPDATE PASS SUCCESS (SHOW SUCCESS)
else if (isset($_SESSION['update_success']) && $_SESSION['update_success'] == 'true'){
	echo '<script>show_message("Update Success!","block");</script>'; 
	echo '<script>submit_forgot_function("true")</script>';
	$_SESSION['update_success'] = 'false';
}
// STATIC DISPLAY USER & PASS
else if(isset($_SESSION['display_user']) && isset($_SESSION['display_pass'])){
	echo '<script>display_input_login("'.$_SESSION['display_user'].'","'.$_SESSION['display_pass'].'")</script>';
	session_destroy();
}
//ELSE PROCEED TO LOGIN PAGE HTML
?>
<!----------------------------PHP CODES ENDS HERE------------------------------>


</body>  
</html>

