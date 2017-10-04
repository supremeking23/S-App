<?php
  session_start();

/*
  function message(){
		if(isset($_SESSION["message"])){
			$output =  "<div class=\"well well-sm\">";
			$output .= "<div class=\"text-success \">";
			$output .= htmlentities($_SESSION["message"]);
			$output .= "</div>";
			$output .= "</div>";

			//clear message after use
			$_SESSION["message"] = null;

			return $output;
		}
	}
*/
/*
  function message_success(){
		if(isset($_SESSION["success_message"])){
			$output =  "<div class=\"well well-sm\">";
			$output .= "<div class=\"text-success \">";
			$output .= htmlentities($_SESSION["success_message"]);
			$output .= "</div>";
			$output .= "</div>";

			//clear message after use
			$_SESSION["success_message"] = null;

			return $output;
		}
	}
/*


/*
	 function failed_message(){
		if(isset($_SESSION["failed_message"])){
			$output =  "<div class=\"well well-sm\">";
			$output .= "<div class=\"text-danger \">";
			$output .= htmlentities($_SESSION["failed_message"]);
			$output .= "</div>";
			$output .= "</div>";

			//clear message after use
			$_SESSION["failed_message"] = null;

			return $output;
		}
	}

*/

function message_success(){
	if(isset($_SESSION['success_message'])){
			$output =  "<div class=\"modal modal-success\" id=\"errormodal\" role=\"dialog\">";
			$output .="<div class=\"modal-dialog\">";
			$output .="<div class=\"modal-content\">";
			$output .="<div class=\"modal-header\">";
			$output .="<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
            <span aria-hidden=\"true\">&times;</span></button>";
            $output .="<h4 class=\"modal-title\"></h4>";
            $output .=" </div>";
            $output .="<div class=\"modal-body\">";
            $output .="<p>" .htmlentities($_SESSION["success_message"]) . "</p>";
            $output .="</div>";
            $output .="<div class=\"modal-footer\">";
            $output .="<button type=\"button\" class=\"btn btn-outline pull-right\" data-dismiss=\"modal\">Close</button>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";



			//clear message after use
			$_SESSION["success_message"] = null;

			return $output;
	}

}




	function failed_message(){
		if(isset($_SESSION["failed_message"])){
			$output =  "<div class=\"modal modal-danger\" id=\"errormodal\" role=\"dialog\">";
			$output .="<div class=\"modal-dialog\">";
			$output .="<div class=\"modal-content\">";
			$output .="<div class=\"modal-header\">";
			$output .="<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
            <span aria-hidden=\"true\">&times;</span></button>";
            $output .="<h4 class=\"modal-title\"></h4>";
            $output .=" </div>";
            $output .="<div class=\"modal-body\">";
            $output .="<p>" .htmlentities($_SESSION["failed_message"]) . "</p>";
            $output .="</div>";
            $output .="<div class=\"modal-footer\">";
            $output .="<button type=\"button\" class=\"btn btn-outline pull-right\" data-dismiss=\"modal\">Close</button>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";



			//clear message after use
			$_SESSION["failed_message"] = null;

			return $output;
		}
	}




		/*function read_unread_message(){
		if(isset($_SESSION["read_unread_message"])){
			$output =  "<div class=\"modal modal-default\" id=\"read_unread_message\" role=\"dialog\">";
			$output .="<div class=\"modal-dialog\">";
			$output .="<div class=\"modal-content\">";
			$output .="<div class=\"modal-header\">";
			$output .="<button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">
            <span aria-hidden=\"true\">&times;</span></button>";
            $output .="<h4 class=\"modal-title\"></h4>";
            $output .=" </div>";
            $output .="<div class=\"modal-body\">";
            $output .="<input type=\"text\" class=\"form-control\" readonly value=\"".htmlentities($_SESSION["sender_name"])."\"> <br />";

            $output .="<textarea class=\"form-control\" readonly>" .htmlentities($_SESSION["read_unread_message"]) . "</textarea> <br />";
            $output .="</div>";
            $output .="<div class=\"modal-footer\">";
            $output .="<button type=\"button\" class=\"btn btn-outline pull-right\" data-dismiss=\"modal\">Close</button>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";
            $output .="</div>";



			//clear message after use
			$_SESSION["sender_name"] = null;
			$_SESSION["read_unread_message"] = null;

			return $output;
		}
	}

*/

	  
?>
