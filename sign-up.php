<?php
	
	require_once("lib/ces_functions.php");
	
	$db = new ces_functions();
	
	$full_name_error	=	"";
	$email_id_error		=	"";
	$password_error		=	"";
	$conf_pwd_error		=	"";
	$day_error			=	"";
	$month_error		=	"";
	$year_error			=	"";
	$gender_error		=	"";
	$country_code_error	=	"";
	$contact_no_error	=	"";
	$t_c_checker_error	=	"";
	
	$flag	=	0;
	$success_msg = 0;
	
	
		$full_name	=	"";
		$email_id	=	"";
		$password	=	"";
		$conf_pwd	=	"";
		$day		=	"";
		$month		=	"";
		$year		=	"";
		$gender		=	"";
		$country_code=	"";
		$contact_no	=	"";
		$email_extension	=	"";
		$t_c_checker	=	"";
	
	if(isset($_POST['signin_btn']))
	{	
		$full_name	=	$_POST['user_full_name'];
		$email_id	=	$_POST['user_email'];
		$password	=	$_POST['user_password'];
		$conf_pwd	=	$_POST['user_conf_password'];
		$day		=	$_POST['day'];
		$month		=	$_POST['month'];
		$year		=	$_POST['year'];
		$gender		=	$_POST['gender'];
		$country_code=	$_POST['country_code'];
		$contact_no	=	$_POST['user_contact_no'];
		$email_extension	=	$_POST['email_extension'];
		
		
		
		if(isset($_POST['t_c_checker']))
		{
			$t_c_checker=	$_POST['t_c_checker'];
		}
		else
		{
			$t_c_checker	=	"";
		}
		
		if($full_name=="")
		{
			$full_name_error	=	"Please enter full name";
			$flag	=	1;
		}
		if($email_id=="")
		{
			$email_id_error	=	"Please enter email id";
			$flag	=	1;
		}
		
		if($password=="")
		{
			$password_error	=	"Please enter password";
			$flag	=	1;
		}
		else if(strlen($password)<5)
		{
			$password_error	=	"Enter atleast 5 characters";
			$flag	=	1;
		}
		if($conf_pwd=="")
		{
			$conf_pwd_error	=	"Please enter confirm password";
			$flag	=	1;
		}
		else if($password!=$conf_pwd)
		{
			$conf_pwd_error	=	"please match the password";
			$flag	=	1;
		}
		if($day=="day")
		{
			$day_error	=	"Please select day";
			$flag	=	1;
		}
		else if($month=="month")
		{
			$month_error	=	"Please select month";
			$flag	=	1;
		}
		else if($year=="year")
		{
			$year_error	=	"Please select year";
			$flag	=	1;
		}
		
		if($gender=="select")
		{
			$gender_error	=	"please select gender";
			$flag	=	1;
		}
		
		if($contact_no=="")
		{
			$contact_no_error	=	"Please enter contact no";
			$flag	=	1;
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
		
		if($t_c_checker=="")
		{
			$t_c_checker_error	=	"Please accept terms & conditions";
			$flag	=	1;
		}
		
		if($flag==0)
		{
			$email_id	=	trim($email_id);
			
			$email_id	=	$email_id.$email_extension;
			
			$check_email_exist = $db->check_user_exist($email_id);
			
			if($check_email_exist=="")
			{
				  function encryptIt( $q ) 
				  {
					$cryptKey  = 'qJB0rGtIn5UB1xG03efyCp';
					$qEncoded      = base64_encode( mcrypt_encrypt( MCRYPT_RIJNDAEL_256, md5( $cryptKey ), $q, MCRYPT_MODE_CBC, md5( md5( $cryptKey ) ) ) );
					return( $qEncoded );
				  }
					
					 $encrypted_password =   encryptIt($password);
				
				$user_dob = $year."-".$month."-".$day;
				
				if($db->set_new_user($full_name,$email_id,$encrypted_password,$user_dob,$gender,$country_code,$contact_no))
				{
					$success_msg = 1;
				}
			}
			else
			{
				$email_id_error	=	"This email is already registered with us!";
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
<script src="/js/voice.js"></script>
<script>
	$(document).ready(function(){
		$("#reg_full_name").focus();
	});
</script>
</head>
<body>

	<?php
		require_once('header.php');
	?>
	
	<div id="middle_data_container">
		
		<?php
			if($success_msg==1)
			{
		?>
			<div class="succ_msg">
				Thank You for joining with us! <br /> Kindly <a href="index.php" class="succ_link">Login Here</a>.
			</div>
		<?php
			}
		?>
	
	<form action="sign-up.php" id="reg_form_submit"	name="signup_form" method="post">
		<div id="login_container" style="min-height:650px; margin-top:25px; margin-bottom:25px;">
			<h2 class="login_titles">Sign Up</h2>
			
			<div class="txtbx_cover">
			<input type="text" name="user_full_name" value="<?php echo $full_name; ?>" id="reg_full_name" class="input_txt" placeholder="Enter full name" />
			<label class="error_indicator"><?php  echo $full_name_error; ?></label>
			</div>

			<div class="txtbx_cover">
			<input type="text" name="user_email" class="input_txt" id="reg_select_userid" value="<?php echo $email_id; ?>" placeholder="Enter user id" style="width:170px; margin-right:0px;" />
			<input type="text" name="email_extension" class="input_txt" value="@ces.com" style="width:85px; border:0px; background-color:transparent; padding:0px; font-size:18px;" readonly />
			<label class="error_indicator"><?php echo $email_id_error; ?></label>
			</div>
			
			<div class="txtbx_cover">
			<input type="password" name="user_password" class="input_txt" id="reg_password" value="<?php echo $password; ?>" placeholder="Enter password" />
			<label class="error_indicator"><?php echo $password_error; ?></label>
			</div>
			
			<div class="txtbx_cover">
			<input type="password" name="user_conf_password" class="input_txt" id="reg_conf_password" value="<?php echo $conf_pwd; ?>" placeholder="Enter confirm password" />
			<label class="error_indicator"><?php echo $conf_pwd_error; ?></label>
			</div>
			
			<div class="txtbx_cover">
			<select name="day" class="input_txt" id="reg_dob_date" style="width:76px">
				<?php
					if($day!="")
					{
				?>
				<option value="<?php echo $day; ?>"><?php echo $day; ?></option>	
				<?php
					}
				?>
				<option value="day">Day</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				<option value="13">13</option>
				<option value="14">14</option>
				<option value="15">15</option>
				<option value="16">16</option>
				<option value="17">17</option>
				<option value="18">18</option>
				<option value="19">19</option>
				<option value="20">20</option>
				<option value="21">21</option>
				<option value="22">22</option>
				<option value="23">23</option>
				<option value="24">24</option>
				<option value="25">25</option>
				<option value="26">26</option>
				<option value="27">27</option>
				<option value="28">28</option>
				<option value="29">29</option>
				<option value="30">30</option>
				<option value="31">31</option>
			</select>

			<select name="month" class="input_txt" id="reg_dob_month" style="width:76px">
				<?php
					if($month!="")
					{
				?>
				<option value="<?php echo $month; ?>"><?php echo $month; ?></option>	
				<?php
					}
				?>
				<option value="Month">Month</option>
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
				<option value="9">9</option>
				<option value="10">10</option>
				<option value="11">11</option>
				<option value="12">12</option>
				
			</select>

			<select name="year" class="input_txt" style="width:76px" id="reg_dob_year">
				<?php
					if($year!="")
					{
				?>
				<option value="<?php echo $year; ?>"><?php echo $year; ?></option>	
				<?php
					}
				?>
				<option value="year">Year</option>				
				<option value="1988">1988</option>
				<option value="1989">1989</option>
				<option value="1990">1990</option>
				<option value="1991">1991</option>
				<option value="1992">1992</option>
				<option value="1993">1993</option>
				<option value="1994">1994</option>
				<option value="1995">1995</option>
				<option value="1996">1996</option>
				<option value="1997">1997</option>
				<option value="1998">1998</option>
				<option value="1999">1999</option>
				<option value="2000">2000</option>
				<option value="2001">2001</option>
				<option value="2002">2002</option>
				<option value="2003">2003</option>
				<option value="2004">2004</option>
				<option value="2005">2005</option>
				<option value="2006">2006</option>
				<option value="2007">2007</option>
				<option value="2008">2008</option>
				<option value="2009">2009</option>
				<option value="2010">2010</option>
				<option value="2011">2011</option>
				<option value="2012">2012</option>

			</select>
			
			<br />
			<label class="error_indicator"><?php echo $day_error.$month_error.$year_error; ?></label>
	
			</div>
			
			
			<div class="txtbx_cover">
			<select name="gender" class="input_txt" id="reg_gender">
				
				<?php
					if($gender!="")
					{
				?>
				<option value="<?php echo $gender; ?>"><?php echo $gender; ?></option>	
				<?php
					}
				?>
				<option value="select">Select Gender</option>
				<option value="Male">Male</option>
				<option value="Female">Female</option>
			</select>
			<label class="error_indicator"><?php echo $gender_error; ?></label>
			</div>
			
			<div class="txtbx_cover">
			<select name="country_code" class="input_txt" style="width:76px" id="reg_country_code">
				<?php
					if($country_code!="")
					{
				?>
				<option value="<?php echo $country_code; ?>"><?php echo $country_code; ?></option>	
				<?php
					}
				?>
				<option value="+91">+91</option>
				<option value="+92">+92</option>
			</select>
			
			<input type="text" name="user_contact_no" class="input_txt" value="<?php echo $contact_no; ?>" placeholder="Enter contact number" id="contact_number" style="width:170px;" />
			
			<label class="error_indicator"><?php echo $contact_no_error; ?></label>
			</div>
			
			<div class="txtbx_cover" style="margin-top:10px;">
			<label><input type="checkbox" name="t_c_checker" id="accept_tc" <?php if($t_c_checker=="on"){ ?>checked <?php } ?> class="chkbx" />You accept Terms & Conditions?</label>
			<label class="error_indicator"><?php echo $t_c_checker_error; ?></label>
			</div>
			
			<input type="submit" name="signin_btn" id="register_btn" value="Create Account" class="login_btn" />
			
			<br /><br />
			
			<a href="/index.php" class="log_links">Have account ? Sign In</a>
			
			
		</div>
	</form>
		
	</div>
	
	<?php
		require_once('footer.php');
	?>


</body>
</html>

<embed src="/voicerecords/registration page/full name.mp3" id="voice_informer_name" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/user id.mp3" id="voice_informer_userid" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/password.mp3" id="voice_informer_password" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/confirm pass.mp3" id="voice_informer_conf_password" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/day.mp3" id="voice_informer_day" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/month.mp3" id="voice_informer_month" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/year.mp3" id="voice_informer_year" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/gender.mp3" id="voice_informer_gender" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/contact no.mp3" id="voice_informer_contact_no" autostart="true" loop="false" style="opacity:0; display:none;">
<embed src="/voicerecords/registration page/terms and condi.mp3" id="voice_informer_terms_conditions" autostart="true" loop="false" style="opacity:0; display:none;">

<embed src="/voicerecords/registration page/registration intro.mp3" id="voice_informer" autostart="true" loop="false" style="opacity:0;display:none;">