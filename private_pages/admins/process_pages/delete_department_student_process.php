<?php
  include("../../includes/sessions.php");
  include("../../includes/connection.php");
  include("../../includes/functions.php");



if(isset($_POST['student_delete'])){

	$admin_id = $_POST['admin_id'];
	$delete_student = $_POST['delete_student'];
	$admin_password = $_POST['admin_password'];
	$department_id = $_POST['department_id'];

	$find_password = find_password($admin_id,$admin_password);

	if($find_password){
		$query = "UPDATE tblstudentinfo SET isActive = 0 WHERE tbl_student_id = '$delete_student'";

		$delete_prof_process = mysqli_query($connection,$query)or die(mysqli_error($connection));
		if($delete_prof_process && mysqli_affected_rows($connection) == 1){
				$_SESSION['success_message'] = "Data has been deleted";
                redirect_to('../department_info.php?department_id='. $department_id);
			}

		else{
				$_SESSION['failed_message'] = "Cannot delete";
				redirect_to('../department_info.php?department_id='. $department_id);
			}
	}else{
		$_SESSION['failed_message'] = "Wrong Password";
  		redirect_to('../department_info.php?department_id='. $department_id);
	}
}

?>