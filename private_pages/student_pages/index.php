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

           }



  ?>
       

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>S-APP | Student </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- fullCalendar -->
  <link rel="stylesheet" href="bower_components/fullcalendar/dist/fullcalendar.min.css">
  <link rel="stylesheet" href="bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
        page. However, you can choose any other skin. Make sure you
        apply the skin class to the body tag so the changes take effect. -->
  <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
  <!-- Morris charts -->
  <link rel="stylesheet" href="bower_components/morris.js/morris.css">
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

  


 <style type="text/css">
   .colors{
    color: red;
   }

   /*for calendar*/
   .fc-time{
   display : none;
}
 </style> 


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
<body class="hold-transition skin-blue sidebar-mini " id="overview">
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
        Overview
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Student</a></li>
        <li class="active">Overview</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content container-fluid">

      <!--------------------------
        | Your Page Content Here -->
     <?php //messages
      echo message_success();
      ?>   

      <?php 


      ?>

            <!-- row -->
      <div class="row">
        <div class="col-xs-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
            <div class="box-header">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Midterm Report</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-default btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="30" data-width="90" data-height="90" data-fgColor="#3c8dbc">

                  <div class="knob-label">Subject 1</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="70" data-width="90" data-height="90" data-fgColor="#f56954">

                  <div class="knob-label">Subject 2</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="-80" data-min="-150" data-max="150" data-width="90" data-height="90" data-fgColor="#00a65a">

                  <div class="knob-label">Subject 3</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="40" data-width="90" data-height="90" data-fgColor="#00c0ef">

                  <div class="knob-label">Subject 4</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <div class="col-xs-6 text-center">
                  <input type="text" class="knob" value="90" data-width="90" data-height="90" data-fgColor="#932ab6">

                  <div class="knob-label">Subject 5</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 text-center">
                  <input type="text" class="knob" value="50" data-width="90" data-height="90" data-fgColor="#39CCCC">

                  <div class="knob-label">Subject 6</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->


                <div class="col-xs-12">
          <!-- jQuery Knob -->
          <div class="box box-solid">
            <div class="box-header">
              <i class="fa fa-bar-chart-o"></i>

              <h3 class="box-title">Final Report</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-default btn-sm" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm" data-widget="remove"><i class="fa fa-times"></i>
                </button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="30" data-width="90" data-height="90" data-fgColor="#3c8dbc">

                  <div class="knob-label">Subject 1</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="70" data-width="90" data-height="90" data-fgColor="#f56954">

                  <div class="knob-label">Subject 2</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="-80" data-min="-150" data-max="150" data-width="90" data-height="90" data-fgColor="#00a65a">

                  <div class="knob-label">Subject 3</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 col-md-3 text-center">
                  <input type="text" class="knob" value="40" data-width="90" data-height="90" data-fgColor="#00c0ef">

                  <div class="knob-label">Subject 4</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->

              <div class="row">
                <div class="col-xs-6 text-center">
                  <input type="text" class="knob" value="90" data-width="90" data-height="90" data-fgColor="#932ab6">

                  <div class="knob-label">Subject 5</div>
                </div>
                <!-- ./col -->
                <div class="col-xs-6 text-center">
                  <input type="text" class="knob" value="50" data-width="90" data-height="90" data-fgColor="#39CCCC">

                  <div class="knob-label">Subject 6</div>
                </div>
                <!-- ./col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->


          <div class="col-md-12">
                       <!-- BAR CHART -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Bar Chart</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="chart" id="bar-chart" style="height: 300px;"></div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
          </div>        
          <!-- /.col -->

      </div>
      <!-- /.row -->


      <div class="row">
        <?php 
          //success message for updating profile picture
          echo message_success();
          //failed message for updating profile picture wrong password
         echo  failed_message();
        ?>
      </div>
    
  
      <div class="row"> <!-- for recomended tutorials-->
          
      </div>

       <div class="row"> <!-- for department info-->

                      <div class="row">

               <div class="col-md-4">

                    <!-- Profile Image -->
                    <div class="box box-primary">
                    <div class="box-header with-border">
                      <h3 class="box-title">Department Head</h3>

                    </div>
                      <div class="box-body box-profile">

                      <?php
                     // $dept_id = 12;
                      //echo "<script>alert($student_department)</script>";
                       $dean = get_dean_by_department_id($student_department);

                          if($dean){

                              $deans_id = $dean['id'];
                             $deans_name = $dean['first_name'] .' '.$dean['middle_name'] .' '.$dean['last_name'];

                             $deans_image = $dean['image']; 
                             $deans_email = $dean['email'];
                             $deans_contact = $dean['contact'];

                            $date =date_create($dean['dean_since']);
                             $deans_since =date_format($date,"F d Y") ;  
                              
                            //for edit
                             $deans_first_name = $dean['first_name'];
                             $deans_middle_name =  $dean['middle_name'];
                             $deans_last_name = $dean['last_name'];
                             //email
                             $deans_address = $dean['address'];
                             //contact
                             $deans_birth_date = $dean['date_birth'];
                          }
                      ?>

                      <?php  $check_dean = check_dean_by_department_id($student_department);


                        if(mysqli_num_rows($check_dean) > 0){?>

                        <img class="profile-user-img img-responsive img-circle" src="../admins/deans image/<?php echo $deans_image?>" alt="User profile picture">

                        <h3 class="profile-username text-center"><?php echo  (isset($deans_name)) ? $deans_name :"";?></h3>

                        <p class="text-muted text-center"></p>

                        <ul class="list-group list-group-unbordered">
                          <li class="list-group-item">
                            <b>Email</b> <a class="pull-right"><?php echo $deans_email;?></a>
                          </li>
                          <li class="list-group-item">
                            <b>Contact</b> <a class="pull-right"><?php echo $deans_contact;?></a>
                          </li>
                          <li class="list-group-item">
                            <b>Department Head Since</b> <a class="pull-right"><?php  echo (isset($deans_since))? $deans_since : "" ;?></a>
                          </li>
                        </ul>

                     



                        <?php }else{echo ""; }?>
                      </div>
                      <!-- /.box-body -->
                    </div>
                    <!-- /.box -->

              </div>
                       

                <?php  //get mission and vision
                        $department_info = get_department_info($student_department);
                        while($dept_info = mysqli_fetch_assoc($department_info)){
                            $mission = $dept_info['mission'];
                            $vision = $dept_info['vision'];
                        }
                ?>

                <div class="col-md-4">
                  <div class="box">
                    <div class="box-header with-border">
                      <h3 class="box-title">Department Mission</h3>


                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <div class="row">
                          <div class="col-md-12" style="text-indent: 16px"><?php echo $mission; ?></div>
                        <!-- /.col -->  
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- ./box-body -->
                    <div class="box-footer">
                      
                      <!-- /.row -->
                    </div>
                    <!-- /.box-footer -->
                  </div>
                  <!-- /.box -->
                </div>

      

                <div class="col-md-4">
                  <div class="box">
                    <div class="box-header with-border">
                      <h3 class="box-title">Department Vision</h3>

                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                      <div class="row">
                       <div class="col-md-12" style="text-indent: 16px"><?php echo $vision; ?></div>
                        <!-- /.col -->
                      </div>
                      <!-- /.row -->
                    </div>
                    <!-- ./box-body -->
                    <div class="box-footer">
                      
                      <!-- /.row -->
                    </div>
                    <!-- /.box-footer -->
                  </div>
                  <!-- /.box -->
                </div>




            </div>
          
      </div>



       
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
    <strong>Copyright &copy; <?php echo date('Y');?> <a href="#">Company</a>.</strong> All rights reserved.
  </footer>

 
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


<!-- AdminLTE App -->
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<script src="dist/js/adminlte.min.js"></script>

<!-- page script -->

<script src="bower_components/plotlyjs/plotly-latest.min.js"></script>

<!-- fullCalendar -->
<script src="bower_components/moment/moment.js"></script>
<script src="bower_components/fullcalendar/dist/fullcalendar.min.js"></script>


<script src="additional_styling/additional.js"></script>
<script src="additional_styling/navigation.js"></script>
<!-- jQuery Knob -->
<script src="bower_components/jquery-knob/js/jquery.knob.js"></script>

<!-- ChartJS -->
<script src="browser_components/Chart.js/Chart.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script>

<script>
  $(function () {
    "use strict";

   
    //BAR CHART
    var bar = new Morris.Bar({
      element: 'bar-chart',
      resize: true,
      data: [
        {y: 'Subject 1', a: 88, b: 90},
        {y: 'subject 2', a: 75, b: 85},
        {y: 'subject3', a: 80, b: 80},
        {y: 'subject 4', a: 75, b: 85},
        {y: 'subject 5', a: 80, b: 90},
        {y: 'subject 6', a: 75, b: 85},
        {y: 'subject 7', a: 78, b: 90}
      ],
      barColors: ['#00a65a', '#f56954'],
      xkey: 'y',
      ykeys: ['a', 'b'],
      labels: ['midterm', 'final'],
      hideHover: 'auto'
    });
  });
</script>



<script>
 $(document).ready(function() {




        $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            defaultDate: '<?php echo date('m-d-y')?>',
            selectable: false,
            selectHelper: true,
            editable: false,
            eventLimit: true, 
            allDay:true,

         
          events: {
            url: 'process_pages/getEvents.php',
            type: 'POST', // Send post data
            //backgroundColor: '',
            error: function() {
                alert('There was an error while fetching events.');
            }
        }
            

        }); //events


            //Date picker
  

    $("div#single_reservation").hide();
        $("div#multiple_reservation").hide();
  
    $("#single_day").click(function(){
        $("div#single_reservation").show();
        $("div#multiple_reservation").hide();
    });
    
    
    $("#multiple_day").click(function(){
        $("div#single_reservation").hide();
        $("div#multiple_reservation").show();
    });

    
    /*var event_name = $('#event_name').val();
         
   

     
    $("#single_day").click(function(){ 
      $('#submit_event').click(function(){
          
          $.ajax({
            url:"process_pages/input_event_single_date_process.php",
            method:"POST",

            data:$('#event_form').serialize(),
            success:function(data){
              $('form').trigger('reset');
              console.log(data);
              console.log(event_name);
            }
          });
      });
    });


    $("#multiple_day").click(function(){ 
      $('#submit_event').click(function(){
          
          $.ajax({
            url:"process_pages/input_event_multiple_date_process.php",
            method:"POST",

            data:$('#event_form').serialize(),
            success:function(data){
              $('form').trigger('reset');
              console.log(data);
              console.log(event_name);
            }
          });
      });
    });

*/
   
        
    });

</script>
<script>
  
  $(function () {
    /* jQueryKnob */

    $(".knob").knob({
      /*change : function (value) {
       //console.log("change : " + value);
       },
       release : function (value) {
       console.log("release : " + value);
       },
       cancel : function () {
       console.log("cancel : " + this.value);
       },*/
      draw: function () {

        // "tron" case
        if (this.$.data('skin') == 'tron') {

          var a = this.angle(this.cv)  // Angle
              , sa = this.startAngle          // Previous start angle
              , sat = this.startAngle         // Start angle
              , ea                            // Previous end angle
              , eat = sat + a                 // End angle
              , r = true;

          this.g.lineWidth = this.lineWidth;

          this.o.cursor
          && (sat = eat - 0.3)
          && (eat = eat + 0.3);

          if (this.o.displayPrevious) {
            ea = this.startAngle + this.angle(this.value);
            this.o.cursor
            && (sa = ea - 0.3)
            && (ea = ea + 0.3);
            this.g.beginPath();
            this.g.strokeStyle = this.previousColor;
            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false);
            this.g.stroke();
          }

          this.g.beginPath();
          this.g.strokeStyle = r ? this.o.fgColor : this.fgColor;
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false);
          this.g.stroke();

          this.g.lineWidth = 2;
          this.g.beginPath();
          this.g.strokeStyle = this.o.fgColor;
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false);
          this.g.stroke();

          return false;
        }
      }
    });
    /* END JQUERY KNOB */


     //INITIALIZE SPARKLINE CHARTS
    $(".sparkline").each(function () {
      var $this = $(this);
      $this.sparkline('html', $this.data());
    });

    /* SPARKLINE DOCUMENTATION EXAMPLES http://omnipotent.net/jquery.sparkline/#s-about */
    drawDocSparklines();
    drawMouseSpeedDemo();

  });
  function drawDocSparklines() {

    // Bar + line composite charts
    $('#compositebar').sparkline('html', {type: 'bar', barColor: '#aaf'});
    $('#compositebar').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
        {composite: true, fillColor: false, lineColor: 'red'});


    // Line charts taking their values from the tag
    $('.sparkline-1').sparkline();

    // Larger line charts for the docs
    $('.largeline').sparkline('html',
        {type: 'line', height: '2.5em', width: '4em'});

    // Customized line chart
    $('#linecustom').sparkline('html',
        {
          height: '1.5em', width: '8em', lineColor: '#f00', fillColor: '#ffa',
          minSpotColor: false, maxSpotColor: false, spotColor: '#77f', spotRadius: 3
        });

    // Bar charts using inline values
    $('.sparkbar').sparkline('html', {type: 'bar'});

    $('.barformat').sparkline([1, 3, 5, 3, 8], {
      type: 'bar',
      tooltipFormat: '{{value:levels}} - {{value}}',
      tooltipValueLookups: {
        levels: $.range_map({':2': 'Low', '3:6': 'Medium', '7:': 'High'})
      }
    });

    // Tri-state charts using inline values
    $('.sparktristate').sparkline('html', {type: 'tristate'});
    $('.sparktristatecols').sparkline('html',
        {type: 'tristate', colorMap: {'-2': '#fa7', '2': '#44f'}});

    // Composite line charts, the second using values supplied via javascript
    $('#compositeline').sparkline('html', {fillColor: false, changeRangeMin: 0, chartRangeMax: 10});
    $('#compositeline').sparkline([4, 1, 5, 7, 9, 9, 8, 7, 6, 6, 4, 7, 8, 4, 3, 2, 2, 5, 6, 7],
        {composite: true, fillColor: false, lineColor: 'red', changeRangeMin: 0, chartRangeMax: 10});

    // Line charts with normal range marker
    $('#normalline').sparkline('html',
        {fillColor: false, normalRangeMin: -1, normalRangeMax: 8});
    $('#normalExample').sparkline('html',
        {fillColor: false, normalRangeMin: 80, normalRangeMax: 95, normalRangeColor: '#4f4'});

    // Discrete charts
    $('.discrete1').sparkline('html',
        {type: 'discrete', lineColor: 'blue', xwidth: 18});
    $('#discrete2').sparkline('html',
        {type: 'discrete', lineColor: 'blue', thresholdColor: 'red', thresholdValue: 4});

    // Bullet charts
    $('.sparkbullet').sparkline('html', {type: 'bullet'});

    // Pie charts
    $('.sparkpie').sparkline('html', {type: 'pie', height: '1.0em'});

    // Box plots
    $('.sparkboxplot').sparkline('html', {type: 'box'});
    $('.sparkboxplotraw').sparkline([1, 3, 5, 8, 10, 15, 18],
        {type: 'box', raw: true, showOutliers: true, target: 6});

    // Box plot with specific field order
    $('.boxfieldorder').sparkline('html', {
      type: 'box',
      tooltipFormatFieldlist: ['med', 'lq', 'uq'],
      tooltipFormatFieldlistKey: 'field'
    });

    // click event demo sparkline
    $('.clickdemo').sparkline();
    $('.clickdemo').bind('sparklineClick', function (ev) {
      var sparkline = ev.sparklines[0],
          region = sparkline.getCurrentRegionFields();
      value = region.y;
      alert("Clicked on x=" + region.x + " y=" + region.y);
    });

    // mouseover event demo sparkline
    $('.mouseoverdemo').sparkline();
    $('.mouseoverdemo').bind('sparklineRegionChange', function (ev) {
      var sparkline = ev.sparklines[0],
          region = sparkline.getCurrentRegionFields();
      value = region.y;
      $('.mouseoverregion').text("x=" + region.x + " y=" + region.y);
    }).bind('mouseleave', function () {
      $('.mouseoverregion').text('');
    });
  }

  /**
   ** Draw the little mouse speed animated graph
   ** This just attaches a handler to the mousemove event to see
   ** (roughly) how far the mouse has moved
   ** and then updates the display a couple of times a second via
   ** setTimeout()
   **/
  function drawMouseSpeedDemo() {
    var mrefreshinterval = 500; // update display every 500ms
    var lastmousex = -1;
    var lastmousey = -1;
    var lastmousetime;
    var mousetravel = 0;
    var mpoints = [];
    var mpoints_max = 30;
    $('html').mousemove(function (e) {
      var mousex = e.pageX;
      var mousey = e.pageY;
      if (lastmousex > -1) {
        mousetravel += Math.max(Math.abs(mousex - lastmousex), Math.abs(mousey - lastmousey));
      }
      lastmousex = mousex;
      lastmousey = mousey;
    });
    var mdraw = function () {
      var md = new Date();
      var timenow = md.getTime();
      if (lastmousetime && lastmousetime != timenow) {
        var pps = Math.round(mousetravel / (timenow - lastmousetime) * 1000);
        mpoints.push(pps);
        if (mpoints.length > mpoints_max)
          mpoints.splice(0, 1);
        mousetravel = 0;
        $('#mousespeed').sparkline(mpoints, {width: mpoints.length * 2, tooltipSuffix: ' pixels per second'});
      }
      lastmousetime = timenow;
      setTimeout(mdraw, mrefreshinterval);
    };
    // We could use setInterval instead, but I prefer to do it this way
    setTimeout(mdraw, mrefreshinterval);
  }
</script>
</body>
</html>