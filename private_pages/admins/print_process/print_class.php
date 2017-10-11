<?php 

  include("../../includes/sessions.php");
  include("../../includes/connection.php");
  include("../../includes/functions.php");

  //print_r($_GET);

  	$department_id = $_GET['department_id'];
	$program_id = $_GET['program_id'];
	$yearlevel = $_GET['yearlevel'];
	$section_id = $_GET['section_id'];

  	$get_section = "SELECT * FROM tblsection WHERE tbl_section_id = '$section_id'";
	$run_get_section = mysqli_query($connection,$get_section)or die(mysqli_error($connection));


	//fetch section data
	while($section_data = mysqli_fetch_assoc($run_get_section)){

		$section_name = $section_data['section_name'];
		$yearlevel_data = $section_data['yearlevel'];
	}//end fetching of section data


	//fetch department data 
  		$get_department = "SELECT * FROM tbldepartments WHERE department_id = '$department_id'";
	$run_get_department = mysqli_query($connection,$get_department)or die(mysqli_error($connection));
		//fetch section data
	while($department_data = mysqli_fetch_assoc($run_get_department)){

		$department_logo = $department_data['department_logo'];
		$department_name = $department_data['department_name'];
		//$yearlevel_data = $department_data['yearlevel'];
	}//end fetching of department data

?>

<?php
  require('5/fpdf.php');

$query = "SELECT * FROM tblstudentinfo WHERE department = '$department_id' AND program_major = '$program_id' AND section ='$section_id' AND yearlevel ='$yearlevel' AND isActive =1";





$run_query = mysqli_query($connection,$query);
if(mysqli_num_rows($run_query)>0){

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
	$wrapdf->SetFont('Arial','I',14);
	$roman_value_yearlevel ="";
	if($yearlevel == "1"){
		$roman_value_yearlevel = "I";
	}else if($yearlevel =="2"){
		$roman_value_yearlevel = "II";
	}else if($yearlevel =="3"){
		$roman_value_yearlevel = "III";
	}else if($yearlevel =="4"){
		$roman_value_yearlevel = "IV";
	}

	$wrapdf->SetFont('Arial','B',16);
	$wrapdf->Cell(0,20,$department_name,0,1,"C");

	$wrapdf->Cell(0,20,"Student Master List for: " .$roman_value_yearlevel. ' - '. $section_name,0,1,"C");
	
	
	$wrapdf->Ln(10);


	$wrapdf->SetFont('Arial','B',10);
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

	//filename
	$class_name ="Student Master List for: " .$roman_value_yearlevel. ' - '. $section_name. '.pdf';
	$wrapdf->Output($class_name,'I');
}else{
	$_SESSION['failed_message'] = "No Data Found";
	redirect_to("../class.php");

}

	
?>