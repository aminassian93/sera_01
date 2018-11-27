<?php
	$Name = $_POST["name"];
	$visitor_email = $_POST['email'];
	$message = $_POST['messsage'];

	$email_from = "aminassian93@gmail.com";

	$email_subject = "Sera Product Interest";

	$email_body = "User Name: $name.\n".
						"User Email: $visitor_email.\n".
							"User Message: $message.\n";
	$to = "armen1222@yahoo.com";

	$headers = "From: $email_from \r\n";

	$headers .= "Reply To: $visitor_email \r\n";

	mail($to, $email_subject, $email_body, $headers);

	header("Location: homePage.html");
?>