      <div class="user-panel">
        <div class="pull-left image">
          <img  src="../student_images/<?php echo $image;?>" width="" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p><?php echo limit_text($first_name . " " . $last_name,3); ?></p>
          <!-- Status -->
          <a href="#"><i class="fa fa-circle text-success"></i> <?php echo $student_department_code; ?></a>
        </div>
      </div>


       <ul class="sidebar-menu" data-widget="tree">
          <li class="header">Control Panel</li>
          <!-- Optionally, you can add icons to the links -->
          <li><a href="index.php"><i class="glyphicon glyphicon-home"></i> <span>Overview</span></a></li>
          
         <li><a href="subjects.php"><i class="fa fa-files-o"></i> <span>Subjects</span></a></li>

         <li><a href="subjects.php"><i class="fa fa-edit"></i> <span>Services</span></a></li>


          <li><a href="class.php"><i class="fa fa-laptop"></i> <span>Tech Support</span></a></li>
        
         
           
           <li><a href="inbox.php"><i class="glyphicon glyphicon-inbox"></i> <span>Inbox</span></a></li>
       </ul>


       <!--   <li><a href="departments.php"><i class="glyphicon glyphicon-th-list"></i> <span>Departments</span></a></li> -->