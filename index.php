<?php
	require_once("lib/ces_functions.php");
	
	$db = new ces_functions();
	
	$email_error		=	"";
	$password_error 	= 	"";
	$flag = 0;
	
	$email		=	"";
	
	if(isset($_POST['signin_btn']))
	{
		$email	=	$_POST['user_email'];
		$password=	$_POST['user_password'];
		
		if($email=="")
		{
			$email_error	=	"Please enter email id";
			$flag = 1;
		}
		
		if($password=="")
		{
			$password_error	=	"Please enter password";
			$flag = 1;
		}
		
		if($flag==0)
		{
			$got_password	=	$db->get_user_password($email);
			
			if($got_password=="")
			{
				$email_error	=	"This is not registered email!";
			}
			else
			{
				
				 function decryptIt( $q ) 
				 {
					$cryptKey  = 'qJB0rGtIn5UB1xG03efyCp';
					$qDecoded      = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $q ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
					return( $qDecoded );
				}
				
				$decrypted_password	=	decryptIt($got_password);
				
				if($password==$decrypted_password)
				{
					
					$_SESSION['current_user_email']	=	$email;
					
					header("Location:user/index.php");
					
				}
				else
				{
					$password_error	=	"incorrect password";
				}
			}
		}
	}
	
?>
<html>
<head>
  <title>Campus Email System</title>
	
  <link rel="stylesheet" type="text/css" href="css/stylesheet.css" />
	
  <script src="js/info.js"></script>
  <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="js/voice.js"></script>
</head>
<body>
	<?php
		require_once('header.php');
	?>
	<div id="middle_data_container" style="min-height:570px; ">
		
		<form action="index.php" name="signin_form" id="login_form" method="post" autocomplete="off">
		<div id="login_container">
			<h2 class="login_titles">Sign In</h2>
			
			<input type="email" name="user_email" id="user_email" class="input_txt" value="<?php echo $email; ?>" placeholder="Enter email id" />
			<label class="error_indicator"><?php  echo $email_error; ?></label>
			<br />
			
			<input type="password" name="user_password" id="login_password" class="input_txt" placeholder="Enter password" />
			<label class="error_indicator"><?php  echo $password_error; ?></label>
			<br />
			
			<input type="submit" name="signin_btn" id="login_btn" value="Login" class="login_btn" />
			
			<br /><br />
			
			<a href="sign-up.php" class="log_links" style="float:left; margin-left:18px;">Create account</a>
			<a href="forgot-password.php" class="log_links" style="float:right; margin-right:18px;">Forgot password?</a>
			
		</div>
	</form>
	
	</div>
	
	<?php
		require_once('footer.php');
	?>
</body>
</html>
<div id="newm"></div>

<embed src="voicerecords/login page/login-email-id.mp3" id="voice_informer_email" loop="false" hidden="true" enablejavascript="true" style="display:none;">
<embed src="voicerecords/login page/login-password.mp3" id="voice_informer_password" loop="false" hidden="true" enablejavascript="true" style="display:none;">
<embed src="voicerecords/login page/login intro.mp3" id="voice_informer" autostart="true" loop="false" style="opacity:0;" hidden="true">