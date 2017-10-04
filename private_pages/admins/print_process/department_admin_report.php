<?php 

  include("../../includes/sessions.php");
  include("../../includes/connection.php");
  include("../../includes/functions.php");
  require('5/fpdf.php');
  //print_r($_GET);

  	$department_id = $_GET['department_id'];
	/*$program_id = $_GET['program_id'];
	$yearlevel = $_GET['yearlevel'];
	$section_id = $_GET['section_id'];*/


	
	//fetch department data 
  		$get_department = "SELECT * FROM tbldepartments WHERE department_id = '$department_id'";
	$run_get_department = mysqli_query($connection,$get_department)or die(mysqli_error($connection));
		//fetch section data
	while($department_data = mysqli_fetch_assoc($run_get_department)){

		$department_logo = $department_data['department_logo'];
		$department_name = $department_data['department_name'];
		//$yearlevel_data = $department_data['yearlevel'];
	}//end fetching of department data


	class ConductPDF extends FPDF {
		function vcell($c_width,$c_height,$x_axis,$text){
			$w_w=$c_height/3;
			$w_w_1=$w_w+2;
			$w_w1=$w_w+$w_w+$w_w+3;
			$len=strlen($text);

			if($len>30){
				$w_text=str_split($text,30);
				$this->SetX($x_axis);
				$this->Cell($c_width,$w_w_1,$w_text[0],'','','');
				$this->SetX($x_axis);
				$this->Cell($c_width,$w_w1,$w_text[1],'','','');
				$this->SetX($x_axis);
				$this->Cell($c_width,$c_height,'','LTRB',0,'L',0);
			}else{
			    $this->SetX($x_axis);
			    $this->Cell($c_width,$c_height,$text,'LTRB',0,'L',0);}
		    }

		function Footer(){
	    
	        $this->SetY(-15);
	        $this->SetFont('Arial','I',8);
	        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
	    }
 	}





 		$wrapdf=new ConductPDF('P','mm','A4');
	$wrapdf->AddPage('L');
	$wrapdf->SetFont('Arial','',16);
	$wrapdf->AliasNbPages();






	$wrapdf->Image('../department logos/Logo2.png',37,10,25);
	$wrapdf->Image('../department logos/'.$department_logo,220,10,25);  
	$wrapdf->SetFont('Arial','B',16);
	$wrapdf->Cell(0,10,"University of Makati.",0,1,"C");
	$wrapdf->SetFont('Arial','I',14);
	$wrapdf->Cell(0,2,"J.P. Rizal Extension, West Rembo, Makati City",0,1,"C");
	$wrapdf->Cell(0,10,$department_name,0,1,"C");

	
	
	$wrapdf->Ln(27);







	//get all programs by department_id
	$get_programs = "SELECT * FROM tblcollegeprograms WHERE department_id = '$department_id'";
	$run_get_programs = mysqli_query($connection,$get_programs)or die(mysqli_error($connection));



  	

	//fetch section data
	while($program_data = mysqli_fetch_assoc($run_get_programs)){
		$program_id =  $program_data['program_id'];
		$wrapdf->SetFont('Arial','I',14);
		$wrapdf->Cell(230,10,"Program: " . $program_data['program_name'] ,0,1,"C");
		$wrapdf->Ln(10);


		//get all sections by program _id
		$get_sections = "SELECT * FROM tblsection WHERE program_id  = '$program_id' AND department_id = $department_id";
		$run_get_sections = mysqli_query($connection,$get_sections)or die(mysqli_error($connection));


		while($section_data = mysqli_fetch_assoc($run_get_sections)){
			
			$wrapdf->SetFont('Arial','I',14);
			$wrapdf->Cell(100,10,"Section: " . $section_data['yearlevel'] .' - '. $section_data['section_name'] ,0,1,"C");
			


			$wrapdf->SetFont('Arial','B',10);
		$wrapdf->Cell(70,10,"Subject",1,0,"C");
		$wrapdf->Cell(90,10,"No. of Student who are in below average",1,0,"C");
		$wrapdf->Cell(100,10,"No. of Student who are in above average",1,1,"C");
		$wrapdf->Cell(70,10,"Program Logic Formulation",1,0,"C");

		#random numbers for now
		//
		$random_below = rand(1,40);
		$rand_above = rand(1,40);
		$wrapdf->Cell(90,10,$random_below,1,0,"C");
		$wrapdf->Cell(100,10,$rand_above,1,1,"C");
		
		$wrapdf->Ln(20);
		}
	
	}//end fetching of section data


?>

<?php
 







	





	/*$wrapdf->SetFont('Arial','B',10);
	$wrapdf->Cell(40,10,"Student ID",1,0,"C");
	$wrapdf->Cell(50,10,"Student Name",1,0,"C");
	$wrapdf->Cell(60,10,"Address",1,0,"C");
	$wrapdf->Cell(40,10,"Contact Number",1,0,"C");
	$wrapdf->Cell(50,10,"Email",1,0,"C");
	$wrapdf->Cell(40,10,"Date of Birth",1,1,"C");
	

	while($row = mysqli_fetch_assoc($run_query)){
		

		$wrapdf->Cell(40,10,$row['student_id'],1,0,"C");

		$x_axis=$wrapdf->getx();
		$c_width=50;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$row['first_name'].' '. $row['last_name'],1);


		$x_axis=$wrapdf->getx();
		$c_width=60;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$row['address'],1);

		$x_axis=$wrapdf->getx();
		$c_width=40;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$row['contact'],1);

		$x_axis=$wrapdf->getx();
		$c_width=50;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$row['email'],1);


		$wrapdf->Cell(40,10,$row['date_birth'],1,1,"C");
		
	
	
	}

	*/


	$wrapdf->Output();

	
?>