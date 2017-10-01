<?php
  include("includes/sessions.php");
  include("includes/connection.php");
  include("includes/functions.php");
  ?>



<?php
		if(isset($_POST['submit'])){

		      if(isset($_POST['checkbox'])){
		        // school id is  id number
		        $idnumber = ucfirst($_POST['school_id']);
		        $email = $_POST['email'];
		        $password = $_POST['confirm_password'];



		        if($_POST['password'] == $_POST['confirm_password']){
		        		//search if email and id number match
		        		$check_presence = check_id_and_email($idnumber,$email);
		        		if($check_presence){
		        			$student_id = $check_presence['tbl_student_id'];
		        			$date=date("l jS \of F Y ");
				            $log_message = "You are now registered at " . $date;
				            $log_header = "Student Registration";
				            $userlevel = "student";
				            
		        			$register = register_student_account_to_system($idnumber,$email,$password);
		        			if($register){
		        				insert_log($log_user_id,$log_header,$log_message,$userlevel);
		        				$_SESSION['success_message'] = "congratulations!!! You can now access your S-APP Account";
		        			}
		        		}else{
		        			$_SESSION['failed_message'] = "email and school id doesnt match   $idnumber    $email ";
		        	}
		        		

		        }else{
		        	$_SESSION['failed_message'] = "password and confirm password doesnt match";
		        }



		        // check if the id number exist in the database
		      /*  $check_id_presence = check_id_presence($idnumber);
		        if($check_id_presence){

		          //after the id has been verified... checked if the id has an email and a password
		          $check_student_id = check_student_id($idnumber);
		          if($check_student_id){
		              //check  if the email alreay exist in the database
		              $check_email_exist =  check_email_exist($email);
		              if($check_email_exist){
		                  echo "<script>alert('Email already used. Try again')</script>";
		              }else{
		                    //run the register functions
		                    $register = register($idnumber,$email,$password);
		                    if($register){
		                        echo "<script>alert('congratulations. You are now registered to S-APP ')</script>";
		                    }
		                  //echo "<script>alert('no duplicate')</script>";
		              }
		          }else{
		              echo "<script>alert('this account is already registered')</script>";
		          }

		        }else{
		          echo "<script>alert('ID number doesnt exist in the database')</script>";
		        }*/

		      }else{
		          //echo "<script>alert('Check the agreement first')</script>";
		      }

				}else{

    }
?>



<!DOCTYPE html>
<html>


	<head>

	<title>Sign Up</title>


	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

	<!-- Style --> <link rel="stylesheet" href="css/style.css" type="text/css" media="all">
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all">

	  <!-- Theme style -->
  <link rel="stylesheet" href="admins/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="admins/dist/css/skins/skin-blue.min.css">
	<!-- Fonts --> <!--<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700"> -->



	<!-- Fonts --> <!--<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700">
-->

	</head>

	<body>
		<div style="margin-bottom: 20px;"></div>

		<?php echo failed_message();
				echo message_success();
		?>



		<div class="mainContainer hidden">

			<div class="logo" align="center">
				<a href="../index.php"><img alt="logo" src="images/logo.png" style="height: 250px; margin: 0px auto;"/></a>
			</div>

			<form action="signup.php" method="post">
				<div class="form-component">
					<input name="school_id" placeholder="School ID Number"  type="text" required="">
					<div class="icon-agile">
						<i class="user" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-component">
					<input  name="email" placeholder="Email" class="mail" type="email" required="">
					<div class="icon-agile">
						<i class="mail" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-component">
					<input placeholder="Password" id="password" name="password" type="password"  required="">
					<div class="icon-agile">
						<i class="pass" aria-hidden="true"></i>
					</div>
				</div>
				<div class="form-component">
					<input placeholder="Confirm Password" id="confirm_password" name="confirm_password"  type="password" required="" onfocusout = "passwordconfirm('password','confirm_password')">
					<div class="icon-agile">
						<i class="confirm-pass" aria-hidden="true"></i>
					</div>
				</div>
				<div class="login-check">
					<label class="checkbox" style="color:white;">
					<input type="checkbox" name="checkbox" checked="" >I Accept Terms & Conditions</label>
				</div>

				<div class="submitOption" style="margin-top: 20px;">
					<input type="submit" name="submit" value="SIGN-UP">
					<p> Already have an account? <span>→</span> <a href="login.php"> Click Here</a></p>
					<div class="clear"></div>
				</div>
			</form>
		</div>

		<div class="footer hidden" style="margin-top: 70px;">
			<p> &copy; 2017 All Rights Reserved</p>
		</div>

		<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    	<!--<script src ="js/validations.js"></script> -->


		<script>
			$(document).ready(function () {
				$('div.hidden').fadeIn(1300).removeClass('hidden');
			});


			 $(document).ready(function(){
      $('#errormodal').modal('show');
    });
		</script>




	</body>


</html>


