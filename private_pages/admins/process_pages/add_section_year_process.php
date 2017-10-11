<?php
  include("../../includes/sessions.php");
  include("../../includes/connection.php");
  include("../../includes/functions.php");


 
if (isset($_POST['add_student_year_sec'])) {
  # code...
   $tbl_student_id = mysql_prep($_POST['student_table_id']);
  // $section = mysql_prep($_POST['section']);


  echo $year = mysql_prep($_POST['year_section']);


  //get data using this year_level variable from tblsection

  $search_year_section_sql = "SELECT * FROM tblsection WHERE tbl_section_id = '$year'";
  $run_search = mysqli_query($connection,$search_year_section_sql);


  while($search_section = mysqli_fetch_assoc($run_search)){
        $section_name = $search_section['section_name'];
        $yearlevel =  $search_section['yearlevel'];
        $tbl_section_id =  $search_section['tbl_section_id'];

  }
  if(mysqli_num_rows($run_search)>0){
    echo $section_name .' '. $yearlevel . ' ' .   $tbl_section_id ;
  }



    $query = "UPDATE tblstudentinfo SET section = '$tbl_section_id', yearlevel = '$yearlevel'  WHERE tbl_student_id = '$tbl_student_id'";

    $update_data = mysqli_query($connection,$query)or die(mysqli_error($connection));

    if($update_data && mysqli_affected_rows($connection) == 1){
        $_SESSION['success_message'] = "Student has been added to a class";

        
                redirect_to('../students.php');
      }

}
  




 //echo $_POST['event_name'] . "hahahahahhahahhaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahhhhh";
?>
