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


   $sql_student="SELECT * FROM tblstudentinfo WHERE department = '$department_id' AND program_major = '$program_id' AND section ='$section_id' AND yearlevel ='$yearlevel' AND isActive =1";
   $run_sql_student =mysqli_query($connection,$sql_student)or die(mysqli_error($connection));

?>

<?php
  require('../../fpdf/fpdf.php');

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



	//get the section name



	



	//$wrapdf->Image('images/SD_logo.png',37,10,25);
	$wrapdf->SetFont('Arial','B',16);
	$wrapdf->Cell(0,10,"University of Makati.",0,1,"C");
	$wrapdf->SetFont('Arial','I',14);
	$wrapdf->Cell(0,2,"List of Students for " . $yearlevel_data ."-".$section_name ,0,1,"C");
	$wrapdf->SetFont('Arial','',14);
	
	//$wrapdf->Cell(0,10,"As Of ".$summary_asof,0,1,"C");
	$wrapdf->Ln(8);
    
	
	
	


	$wrapdf->SetFont('Arial','B',10);
	$wrapdf->Cell(40,10,"Student ID",1,0,"C");
	$wrapdf->Cell(70,10,"Student Name",1,0,"C");
	$wrapdf->Cell(40,10,"Contact Number",1,0,"C");
	$wrapdf->Cell(60,10,"Date of Birth",1,0,"C");
	$wrapdf->Cell(70,10,"Addresss",1,1,"C");


	//$wrapdf->Ln(8);
	

	

	
	echo mysqli_num_rows($run_sql_student);
	while($fetch_student = mysqli_fetch_assoc($run_sql_student)){


		$wrapdf->Cell(40,10,$fetch_student['student_id'],1,0,"C");
		$wrapdf->Ln();

		/*$x_axis=$wrapdf->getx();
		$c_width=70;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$fetch_student['first_name'].' '. $fetch_student['middle_name'].' '. $fetch_student['last_name'],1);


		$x_axis=$wrapdf->getx();
		$c_width=40;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$fetch_student['contact'],1);

		$x_axis=$wrapdf->getx();
		$c_width=60;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$fetch_student['date_birth'],1);


		$x_axis=$wrapdf->getx();
		$c_width=70;
		$c_height=10;
		$wrapdf->vcell($c_width,$c_height,$x_axis,$fetch_student['address'],1);

		$wrapdf->Cell(70,10,$fetch_student['address'],1,0,"C");
		$wrapdf->Ln();
*/
		//$wrapdf->Output();
	}



	
?>