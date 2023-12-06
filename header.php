<div id="header_container">
		<div id="mid_header">
			<div id="site-logo">VB Email System</div>
			
			<div id="menu_container">
				
		<?php
				
			if(isset($_GET['remove_prof_id']))
			{
				$del_id	=	$_GET['remove_prof_id'];
				
				$delete_profile_image	=	$db->get_user_profile_image($current_login_user_id);
				
				$db->delete_profile_picture($del_id);
				
				if($delete_profile_image!="")
				{
					unlink('profile-pictures/'.$current_login_user_id.'/'.$delete_profile_image);
				}	
			}
		
				
				if(isset($_SESSION['current_user_email']))
				{
					$current_login_email	=	$_SESSION['current_user_email'];
					
					$current_login_user_id	=	$db->get_user_reg_id_from_email($current_login_email);
					
					$profile_image	=	$db->get_user_profile_image($current_login_user_id);
			
			if($profile_image!="")
			{
		?>
			<img src="user/profile-pictures/<?php echo $current_login_user_id; ?>/<?php echo $profile_image; ?>" class="dash_profile_icon" />
		<?php
			}
			else
			{
		?>
			<img src="/images/user-icon-new.png" class="dash_profile_icon" />
		<?php	
			}
		?>	
					<a href="/user/index.php" class="dash_user_email"><?php echo $current_login_email; ?></a>
					<a href="/lib/signout.php" id="signout_btn" class="menu_link">SignOut</a>
				<?php
				}
				else
				{
				?>
				<a href="/index.php" class="menu_link">Home</a>
				<a href="/about-us.php" class="menu_link">About Us</a>
				<a href="/sign-up.php" class="menu_link">Sign Up</a>
				<a href="/index.php" class="menu_link">Sign In</a>
				<?php
				}
				?>
				
			</div>
		</div>
	</div>