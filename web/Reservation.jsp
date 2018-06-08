<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Reservation</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="imagesr/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fontsr/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fontsr/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendorr/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="cssr/util.css">
	<link rel="stylesheet" type="text/css" href="cssr/main.css">
<!--===============================================================================================-->
</head>
<body>


	<div class="container-contact100">
		
		<div class="wrap-contact100">
			<div class="contact100-form-title" style="background-image: url(imagesr/bg-01.jpg);">
				<span class="contact100-form-title-1">
					Réservation
				</span>

				<span class="contact100-form-title-2">
				Votre réservation est réussie
                                <%System.out.println("rani fel jsp Reservation.jsp ");%>
				</span>
			</div>

			<form class="contact100-form validate-form">
				<div class="wrap-input100 validate-input" data-validate="Name is required">
					<span class="label-input100">Email de Voyageur:</span>
					<input class="input100" type="text" name="emailv" placeholder=""
					value=<%out.print(session.getAttribute("mail")); %>>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
					<span class="label-input100">Email de l'hote:</span>
					<input class="input100" type="text" name="emailh" placeholder=""
					value=<%out.print(session.getAttribute("mailh")); %>>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Date d'arrivée:</span>
					<input class="input100" type="text" name="dateArr" placeholder=""
					value=<%out.print(session.getAttribute("date")); %>>
					<span class="focus-input100"></span>
				</div>
				
				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Date de départ:</span>
					<input class="input100" type="text" name="dateArr" placeholder=""
					value=<%out.print(session.getAttribute("dated")); %>>
					<span class="focus-input100"></span>
				</div>

				<div class="wrap-input100 validate-input" data-validate="Phone is required">
					<span class="label-input100">Nombre de personnes:</span>
					<input class="input100" type="text" name="nbrP" placeholder=""
					value=<%out.print(session.getAttribute("nbrP")); %>>
					<span class="focus-input100"></span>
				</div>
				<div class="container-contact100-form-btn">
					<button class="contact100-form-btn">
						<span>
							Comfirmer 
						</span>
					</button>
				</div>
			</form>
		</div>
	</div>



	<div id="dropDownSelect1"></div>

<!--===============================================================================================-->
	<script src="vendorr/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorr/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorr/bootstrap/js/popper.js"></script>
	<script src="vendorr/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorr/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendorr/daterangepicker/moment.min.js"></script>
	<script src="vendorr/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendorr/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="jsr/map-custom.js"></script> -->
<!--===============================================================================================-->
	<script src="jsr/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
	<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-23581568-13');
	</script> -->

</body>
</html>

