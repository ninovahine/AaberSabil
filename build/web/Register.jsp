<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<form action="Registration" method="post">
			<fieldset>
				<legend>
					<strong> Identificateur </strong>
				</legend>
				<label for="nom"><blink>Nom:</blink> </label> <input type="text"
					name="nom" id="nom" placeholder="le nom" required><br /> <br />
				<br/> <label for="prenom"> Prenom:</label> <input type="text"
					name="prenom" id="prenom" placeholder="le prenom" required><br />
				<br /> <br /> <label for="age"> Age:</label> <input type="number"
					name="age" id="age" required><br /> <br />
			</fieldset>
			<br />
			<fieldset>
				<label for="numCart"> Numero de la carte bancaire:</label> <input
					type="password" name="numcart" id="numCart" required><br />
				<br /> <br /> <label for="Dexp">Date d'expiration:</label> <input
					type="date" name="dateexpire" id="age" required><br />

			</fieldset>
			<input type="submit" value="REGISTER">
		</form>
	</div>
</body>
</html>