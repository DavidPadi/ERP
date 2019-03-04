<!doctype html>
<html lang="en">
<head>
<style type="text/css">
div.layout {
	text-align: center;
}

div.centre {
	text-align: left;
	width: 600px;
	background-color: #eee;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	margin-top: auto;
	margin-bottom: auto;

}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<LINK REL="stylesheet" TYPE="text/css"
	HREF="resources/css/bootstrap.min.css" />
<meta name="description" content="">
<meta name="author" content="">

<link rel="shortcut icon" href="resources/img/prueba.ico">
<title>PRODUCCIONES ZIRIGAÑA</title>

<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/signin.css" rel="stylesheet">
</head>

<!-- PONER UNA FOTO DE FONDO  -->
<body style="background-color: #BDBDBD;" style="background-size:500px">
	<div class="container" style="margin-top: 10px">
		<div class="layout">
			<div class="centre">
				<img class="img" src="resources/img/Logo_Zirigaña.png" alt=""
					style="width: 80%">
				<form class="form-signin" action="Inicio" method="POST">
					<label for="inputEmail" class="sr-only">Email</label> <input
						type="email" name="inputEmail" class="form-control"
						placeholder="Correo electronico" required autofocus> <label
						for="inputPassword" class="sr-only">Password</label> <input
						type="password" name="inputPassword" class="form-control"
						placeholder="Contraseña" required>
					<button class="btn btn-lg btn-primary btn-block" type="submit">Inicia sesion</button>
					<p class="mt-5 mb-3 text-muted" align="center"><a href="http://localhost:8080/org/Contrasenaolvidada">¿Has olvidado tu contraseña? Pincha aquí.</a></p>
					<p class="mt-5 mb-3 text-muted" align="center">&copy; 2018-2019</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
