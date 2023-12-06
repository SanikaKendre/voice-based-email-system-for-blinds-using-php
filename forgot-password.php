<?php
	require_once("lib/ces_functions.php");
	
	$db = new ces_functions();
	
	$email_error		=	"";
	$contact_no_error 	= 	"";
	$flag = 0;
	
	$email		=	"";
	$contact_no	=	"";
	$success_msg	=	0;
	
	if(isset($_POST['forgot_pwd_btn']))
	{
		$email		=	$_POST['user_email'];
		$contact_no	=	$_POST['user_contact_no'];
		
		if($email=="")
		{
			$email_error	=	"Please enter email id";
			$flag = 1;
		}
		
		if($contact_no=="")
		{
			$contact_no_error	=	"Please enter contact number";
			$flag = 1;
		}
		else if(!is_numeric($contact_no))
		{
			$contact_no_error	=	"Please enter numeric contact no";
			$flag	=	1;
		}
		else if(strlen($contact_no)<10 OR strlen($contact_no)>10)
		{
			$contact_no_error	=	"please enter 10 digit contact no";
			$flag	=	1;
		}
		
		if($flag==0)
		{
			$result_password = $db->get_forgot_password($email,$contact_no);
			
			if($result_password=="")
			{
				$email_error	=	"Incorrect credentials!";
			}
			else
			{
				
				 function decryptIt( $q ) 
				 {
					$cryptKey  = 'qJB0rGtIn5UB1xG03efyCp';
					$qDecoded      = rtrim( mcrypt_decrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), base64_decode( $q ), MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ), "\0");
					return( $qDecoded );
				}
				
				$decrypted_password	=	decryptIt($result_password);
				
				//Send Message - with password
				
				$success_msg	=	1;
				
			}
		}
	}
	
?>
<html>
<head>
	<title>Campus Email System</title>
	
	<link rel="stylesheet" type="text/css" href="/css/stylesheet.css" />
	
</head>
<body>

	<?php
		require_once('header.php');
	?>
	
	<div id="middle_data_container" style="min-height:570px;">
		
		<form action="/forgot-password.php" name="signin_form" method="post" autocomplete="off">
		<div id="login_container" style="height:260px;">
			<h2 class="login_titles">Forgot Password</h2>
			
			<?php
				if($success_msg=="1")
				{
			?>
			<div class="fp_success_msg">Your password is sent on your mobile number!</div>
			<?php
				}
			?>
			
			<input type="email" name="user_email" class="input_txt" value="<?php echo $email; ?>" placeholder="Enter email id" />
			<label class="error_indicator"><?php  echo $email_error; ?></label>
			<br />

			<input type="text" name="user_contact_no" class="input_txt" value="<?php echo $contact_no; ?>" placeholder="Enter contact number" />
			<label class="error_indicator"><?php  echo $contact_no_error; ?></label>
			<br />
			
			<input type="submit" name="forgot_pwd_btn" value="Send My Password" class="login_btn" />
			
			<br /><br />
			
			<a href="/sign-up.php" class="log_links" style="float:left; margin-left:18px;">Create account</a>
			<a href="/index.php" class="log_links" style="float:right; margin-right:18px;">Login to account</a>
			
		</div>
		</form>
		
		
	</div>
	
	<?php
		require_once('footer.php');
	?>


</body>
</html>