<?php
  include("../includes/sessions.php");
  include("../includes/connection.php");
  include("../includes/functions.php");

  //
  date_default_timezone_set('Asia/Taipei');
//checked to see if the user is login...
  confirm_logged_in_student();
  ?>

  <?php 
           //retrieving admin account

             $tbl_student_id = $_SESSION['tbl_student_id'];  
           $student = get_student_by_id($tbl_student_id);

           if($student){
             $last_name =  $student['last_name'];
             $first_name = $student['first_name'];
             $middle_name = $student['middle_name'];
             $image = $student['image'];
             $student_department = $student['department'];
             $student_id = $student['student_id'];
             $student_fullname = $first_name .' '. $last_name;
           }

  ?>
       

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>S-APP | Admin</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
   <!-- DataTables -->
  <link rel="stylesheet" href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<!--
BODY TAG OPTIONS:
=================
Apply one or more of the following classes to get the
desired effect
|---------------------------------------------------------|
| SKINS         | skin-blue                               |
|               | skin-black                              |
|               | skin-purple                             |
|               | skin-yellow                             |
|               | skin-red                                |
|               | skin-green                              |
|---------------------------------------------------------|
|LAYOUT OPTIONS | fixed                                   |
|               | layout-boxed                            |
|               | layout-top-nav                          |
|               | sidebar-collapse                        |
|               | sidebar-mini                            |
|---------------------------------------------------------|
-->
<body class="hold-transition skin-blue sidebar-mini " id="inbox">
<div class="wrapper">

  <!-- Main Header -->
  <header class="main-header">

    <!-- Logo -->
    <a href="#" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><img width="50px" src="images/Logo.png"></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>S-APP</b> Student Panel</span>
    </a>

  <!-- Header Navbar -->
     <?php include('layouts/header_nav.php'); ?>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

      <!-- Sidebar user panel (optional) -->
      <!-- Sidebar user panel (optional) -->
      <!-- Sidebar Menu -->
        <?php include('layouts/navigation.php'); ?>
      <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">


      <h1>
        Inbox
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Admin</a></li>
        <li class="active">Inbox</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">
      <!--------------------------
        | Your Page Content Here -->


         <?php 
          //success message for updating profile picture
          echo message_success();
          //failed message for updating profile picture wrong password
         echo  failed_message();
        // echo read_unread_message();
        ?>

        
          <div class="row">
            <!-- /.tables nalang -->

            <div class="col-md-12">
                  <div class="box">
            <div class="box-header">
              <h3 class="box-title">Inbox</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>From Admin</th>
                 
                  <th>Message</th>
                  <th>Date</th>
                  <th>Action</th>
                </tr>
                </thead>
                <tbody>
                  
                    <?php //get inbox by admin_id
                    $get_inbox = get_all_reply_messages_for_this_student($student_id);
                    while($fetch_inbox = mysqli_fetch_assoc($get_inbox)):
                    ?>



                <tr>

                  <td><?php echo $fetch_inbox['from_admin'];?></td> 
                  <td>
                     <?php //read message
                    if($fetch_inbox['status'] != 'Seen'){
                    ?>
                    <button class="btn btn-danger" data-toggle="modal" data-target="#readUnreadMessage<?php echo $fetch_inbox['reply_id'] ?>">Unread</button>

                            <div class="modal fade" id="readUnreadMessage<?php echo $fetch_inbox['reply_id'] ?>">
                            <div class="modal-dialog">
                              <div class="modal-content">
                                <div class="modal-header">
                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span></button>
                                  <h4 class="modal-title">From School Admin</h4>
                                </div>
                                <div class="modal-body">
                                  <div class="well">
                                      <b><label for="sender_name">Sender Name</label></b><br />
                                      <input type="text" size="30" readonly="" name="sender_name" value="<?php echo $fetch_inbox['from_admin'];?>" class="form-control "> <br /> <br />
                                      <label for="message">Message</label><br />
                                      <textarea class="form-control" rows="7" cols="80" readonly=""><?php echo $fetch_inbox['message'];?></textarea>
                                  </div>    
                                </div>
                                <div class="modal-footer">
                                 <form method="POST" action="process_pages/message_process.php">
                                  <input type="hidden" name="reply_id" value="<?php echo $fetch_inbox['reply_id'] ?>">
                                  <button type="submit" name= "read_unread" class="btn btn-primary pull-right">Close</button>
                                  </form>
                                </div>
                              </div>
                              <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                          </div>
                          <!-- /.modal -->

                    <?php }else{ ?>
                   <button class="btn btn-primary" data-toggle="modal" data-target="#readMessage<?php echo $fetch_inbox['reply_id'] ?>">Read</button>

                     <div class="modal fade" id="readMessage<?php echo $fetch_inbox['reply_id'] ?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title"></h4>
                          </div>
                          <div class="modal-body">
                              <div class="well">
                                      <b><label for="sender_name">Sender Name</label></b><br />
                                      <input type="text" readonly="" size="30" name="sender_name" value="<?php echo $fetch_inbox['from_admin'];?>" class="form-control "> <br /> <br />
                                      <label for="message">Message</label><br />
                                      <textarea class="form-control" rows="7" cols="80" readonly=""><?php echo $fetch_inbox['message'];?></textarea>
                                  </div>    
                          </div>
                          <div class="modal-footer">
                          
                            <button type="button" name= "read_unread" data-dismiss="modal" class="btn btn-primary pull-right">Close</button>
                          
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->

                  <?php } ?>
                  </td>

                   <?php $date =date_create($fetch_inbox['date_created']);
                          $date_send= date_format($date," F d Y g:i:s A");
                          //echo $log_date;
                          ?>
                  <td><?php echo $date_send; ?></td>
                  <td>
                  <button type="button" class="btn btn-sm btn-primary" title="Reply" data-tooltip="tooltip" data-toggle="modal" data-target="#replyBox<?php echo $fetch_inbox['reply_id'] ?>"><i class="fa  fa-send"></i></button> &nbsp&nbsp&nbsp

                  <!--reply from admin -->
                  <div class="modal fade" id="replyBox<?php echo $fetch_inbox['reply_id'] ?>">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title"></h4>
                          </div>
                          <div class="modal-body">
                              <div class="well">

                                  <form action="process_pages/message_process.php" method="POST">
                                      <b><label for="">To : <a href="">School Admin</a></label></b><br />
                                      <b><label for="from_student">From :</label></b><br />
                                      <input type="text" readonly="" size="25" name="from_student" value="<?php echo $student_fullname?>" class="form-control "> <br /> <br />
                                       <b><label for="email"  >Email</label></b><br />
                                      <input type="text" readonly="" size="25" name="email" value="<?php echo $fetch_inbox['email'];?>" class="form-control "> <br /> <br />
                                       <b><label for="subject">Subject :</label></b><br />
                                      <input type="text" size="25"  name="subject" value="" class="form-control "> <br /> <br />
                                      <label for="message">Message</label><br />
                                      <textarea name="reply_message_from_student" class="form-control" rows="7" cols="80" ></textarea>

                                      
                                      <input type="hidden" name="student_id" value="<?php echo $fetch_inbox['student_id']?>">
                                      <input type="submit" name="reply_to_admin" class="btn btn-success" value="Send">
                                  </form>
                                      
                                  </div>    
                          </div>
                          <div class="modal-footer">
                          
                            <button type="button" name= "read_unread" data-dismiss="modal" class="btn btn-primary pull-right">Close</button>
                          
                          </div>
                        </div>
                        <!-- /.modal-content -->
                      </div>
                      <!-- /.modal-dialog -->
                    </div>
                    <!-- /.modal -->

                  <a href="process_pages/message_process.php?reply_id_delete=<?php echo $fetch_inbox['reply_id']?>" class="btn btn-danger btn-sm" title="Delete" data-tooltip="tooltip"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>


              <?php endwhile; // end fetch inbox?>
              </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
            </div>

          </div>
          <!-- /.row -->

         <!--|
        -------------------------->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="pull-right hidden-xs">
      
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; <?php echo date('Y');?><a href="#">Company</a>.</strong> All rights reserved.
  </footer>


  <?php 
  
?>

 
</div>
<!-- ./wrapper -->
<?php 
//close connection
$connection->close();
?>
<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- DataTables -->
<script src="bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<!-- AdminLTE App -->
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<script src="dist/js/adminlte.min.js"></script>

<!-- iCheck -->
<script src="plugins/iCheck/icheck.min.js"></script>

<!-- self script -->
<script src="additional_styling/additional.js"></script>
<script src="additional_styling/navigation.js"></script>
<script>
  $(function(){
 
  $("#inbox a:contains('Inbox')").parent().addClass('active');
})
</script>


</body>
</html>


