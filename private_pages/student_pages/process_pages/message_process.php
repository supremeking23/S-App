<?php
  include("../../includes/sessions.php");
  include("../../includes/connection.php");
  include("../../includes/functions.php");


 
// for read and unread message
  if(isset($_POST['read_unread'])){
    $reply_id = mysql_prep($_POST['reply_id']);
    //$message_text = mysql_prep($_POST['message_text']);
    //$sender_name = mysql_prep($_POST['sender_name']);
    $seen_sql = "UPDATE tblreplymessage SET status = 'Seen' WHERE reply_id = '$reply_id'";
    $run_seen_sql = mysqli_query($connection,$seen_sql);


    if($run_seen_sql && mysqli_affected_rows($connection) == 1){
       // $_SESSION['read_unread_message'] = $message_text;
        //$_SESSION['sender_name'] =  $sender_name;
        redirect_to('../inbox.php');
      }

  }


  if(isset($_POST['reply'])){
    $student_id = mysql_prep($_POST['student_id']);
    $recipient = mysql_prep($_POST['recipient_name']);
    $email = mysql_prep($_POST['email']);
    $from_admin = mysql_prep($_POST['admin_name']);
    $reply_message_from_admin = mysql_prep($_POST['reply_message_from_admin']);


    $reply_sql = "INSERT INTO tblreplymessage(student_id,recipient,email,from_admin,message,date_created) VALUES('$student_id','$recipient','$email','$from_admin','$reply_message_from_admin',now())";

    $run_reply_sql = mysqli_query($connection,$reply_sql);

    if($run_reply_sql && mysqli_affected_rows($connection) == 1){
       // $_SESSION['read_unread_message'] = $message_text;
        //$_SESSION['sender_name'] =  $sender_name;
      $_SESSION['success_message'] = "Message Sent";
        redirect_to('../inbox.php');
      }

  }


  if(isset($_GET['message_id_delete'])){
     $delete_id = $_GET['message_id_delete'];

     $delete_sql = "DELETE FROM tblmessage WHERE message_id = $delete_id";

     $run_delete_sql = mysqli_query($connection,$delete_sql);

      if($run_delete_sql && mysqli_affected_rows($connection) == 1){
       // $_SESSION['read_unread_message'] = $message_text;
        //$_SESSION['sender_name'] =  $sender_name;
      $_SESSION['success_message'] = "Message Thread has been Deleted";
        redirect_to('../inbox.php');
      }
  }























//reply to admin


if(isset($_POST['reply_to_admin'])){
  $student_id = mysql_prep($_POST['student_id']);
    $from_student = mysql_prep($_POST['from_student']);
    $email = mysql_prep($_POST['email']);
    $subject = mysql_prep($_POST['subject']);
    $reply_message_from_student = mysql_prep($_POST['reply_message_from_student']);


    $reply_from_student_sql = "INSERT INTO tblmessage(student_id,name,email,subject,message,date_created) VALUES('$student_id','$from_student','email','$subject','$reply_message_from_student',now())";

    $run_reply_from_student_sql = mysqli_query($connection,$reply_from_student_sql);

      if($run_reply_from_student_sql && mysqli_affected_rows($connection) == 1){
       // $_SESSION['read_unread_message'] = $message_text;
        //$_SESSION['sender_name'] =  $sender_name;
        $_SESSION['success_message'] = "Message Sent";
        redirect_to('../inbox.php');
      }

}



if(isset($_GET['reply_id_delete'])){
       $delete_id = $_GET['reply_id_delete'];

       $delete_sql = "DELETE FROM tblreplymessage WHERE reply_id = $delete_id";

       $run_delete_sql = mysqli_query($connection,$delete_sql);

        if($run_delete_sql && mysqli_affected_rows($connection) == 1){
         // $_SESSION['read_unread_message'] = $message_text;
          //$_SESSION['sender_name'] =  $sender_name;
        $_SESSION['success_message'] = "Message Thread has been Deleted";
          redirect_to('../inbox.php');
        }
  }




 //echo $_POST['event_name'] . "hahahahahhahahhaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahhhhh";
?>
