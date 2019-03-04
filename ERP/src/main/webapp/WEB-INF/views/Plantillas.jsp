<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
<link rel="stylesheet" href="resources/css/style4.css">
<script src='resources/js//moment.min.js'></script>
<link rel='stylesheet' href='resources/css/fullcalendar.css' />
<script src='resources/js/jquery.min.js'></script>
<script src='resources/js/fullcalendar.js'></script>


<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
	integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ"
	crossorigin="anonymous"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
	integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<!-- css para calendario -->
<link href="resources/css/agenda.css" rel="stylesheet">
<script src="resources/js/bootstrap.min.js"></script>

<link href="resources/css/bootstrap-datepicker.css" rel="stylesheet">
<script src="resources/js/bootstrap-datepicker.min.js"></script>
<script src="resources/js/bootstrap-datepicker.es.min.js"></script>



<script src='resources/js//moment.min.js'></script>
<link rel='stylesheet' href='resources/css/fullcalendar.css' />
<script src='resources/js/fullcalendar.min.js'></script>
<script src='resources/locale/es.js'></script>

<script src='resources/js/bootstrap-clockpicker.js'></script>
<link rel='stylesheet' href='resources/css/bootstrap-clockpicker.css'>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<title>TAREAS</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="shortcut icon" href="resources/img/prueba.ico">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->
<style>
#caja {
	width: 100%;
	position: fixed;
	z-index: 100;
}

#caja2 {
	padding-top: 55px;
	padding-left: 150px;
	padding-right: 150px;
}

.selected {
	background-color: red;
}
</style>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
	background-color: #C0C3C6;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>

<style type='text/css'>
.redBackground {
	background: #60605F;
}
</style>
</head>
<body style="background-color: #FFFFFF;">
	<div id="caja">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarTogglerDemo01"
				aria-controls="navbarTogglerDemo01" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
				<a class="navbar-brand" href="http://localhost:8080/org/">PRODUCCIONES
					ZIRIGAÑA</a>
				<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
					<li class="nav-item"><a class="navbar-brand"
						href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
						title="Correo">
						<i class="fas fa-envelope"></i>	
					</a></li>
					<li class="nav-item">
				        <a class="navbar-brand" href="http://localhost:8080/org/Calendario" title="Calendario">
				         	<i class="fa fa-calendar" title="Calendario" aria-hidden="true"></i>
			        	</a>
		      		</li>
		      		<li class="nav-item"><a class="navbar-brand"
				href="http://localhost:8080/org/MisTareas" title="Mis tareas"><i class="fas fa-check-circle">
				</i></a>
			</li>

				</ul>

			</div>
			<form action='Logout' method='POST'>
				<button class='btn btn-danger ' type='submit'>Cerrar Sesion</button>
			</form>
		</nav>
	</div>





	<div id="caja2">

		<table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
			<span class="contact100-form-title"> ${nombre} </span>

			<c:forEach items="${tarea}" var="c" varStatus="estado">
				<tr>
					<td style="width: 5px">
						<form action="EditarConcurso" method="POST">
							<input type="hidden" name="email" value="${email}"> 
							<input type="hidden" name="id" value="${c.id}">
							<input type="text" name="concurso" value="${c.concurso }" />
							<button type="button" class="btn btn-success" data-toggle="modal" data-target="#concurso">
								<i class="fa fa-tasks"></i>
							</button>
							<button type="submit" class="btn btn-info">
								<i class="fas fa-edit"></i>
							</button>
							
						</form>
					</td>
					
					<td style="width: 5px">
						<form action="EditarProduccion" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="produccion"
								value="${c.produccion }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#produccion">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td style="width: 5px">
					<form action="EditarImplantacion" method="POST"> 
						<input type="hidden" name="id"
							value="${c.id}"> <input type="text" name="implantacion"
							value="${c. implantacion}">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#implantacion">
								<i class="fa fa-tasks"></i>
							</button>
							<button type="submit" class="btn btn-info">
								<i class="fas fa-edit"></i>
							</button>
							
							
							
					</form>
					</td>
					<td style="width: 5px">
						<form action="EditarPostventa" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="postventa"
								value="${c.postventa }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#postventa">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
				</tr>
			</c:forEach>
		


			<c:forEach items="${tarea}" var="c" varStatus="estado">
				<tr>

					<td width="500">
						<form action="EditarBriefing" method="POST">
							<input type="hidden" name="id" value="${c.id}"> <input
								type="text" name="briefing" value="${c.briefing }">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#briefing">
								<i class="fa fa-tasks"></i>
							</button>
							<button type="submit" class="btn btn-info">
								<i class="fas fa-edit"></i>
							</button>
							
						</form>
					</td>
					<td width="500">
						<form action="EditarProduccion1" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="produccion1"
								value="${c.produccion1 }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#produccion1">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarMontajes" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="montajes"
								value="${c.montajes }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#montajes">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarResultadocamp" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text"
								name="resultado_campaña" value="${c.resultado_camp }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#resultado_campaña">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
				</tr>
			</c:forEach>



			<c:forEach items="${tarea}" var="c" varStatus="estado">
				<tr>
				<td width="500">
					<form action="EditarPropuesta" method="POST">
							<input type="hidden" name="id"
								value="${c.id}">
							<input type="text" name="propuesta"
							value="${c.propuesta}">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#propuesta_diseño">
								<i class="fa fa-tasks"></i>
							</button>
							<button type="submit" class="btn btn-info">
								<i class="fas fa-edit"></i>
							</button>
							
					</form>
					</td>
					<td width="500">
					<form action="EditarProduccion2" method="POST">
						<input type="hidden" name="id"
							value="${c.id}"> <input type="text" name="produccion2"
							value="${c.produccion2 }">
							<button type="button" class="btn btn-success" data-toggle="modal"
								data-target="#produccion2">
								<i class="fa fa-tasks"></i>
							</button>
							<button type="submit" class="btn btn-info">
								<i class="fas fa-edit"></i>
							</button>
							
					</form>
					</td>
					<td width="500">
						<form action="EditarImplantacion2" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="implantacion2"
								value="${c.implantacion2 }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#implantacion2">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarVideo" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="video"
								value="${c.video } ">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#video">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
				</tr>
			</c:forEach>


			<c:forEach items="${tarea}" var="c" varStatus="estado">
				<tr>
				<td>
						<form action="EditarCostes" method="POST">
							<input type="hidden" name="id" value="${c.id}"> <input
								type="text" name="estudio_costes" value="${c.estudio_costes }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#estudio_costes">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarProduccion3" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="produccion3"
								value="${c.produccion3 }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#produccion3">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarImplantacion3" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="implantacion3"
								value="${c.implantacion3 }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#implantacion3">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
					<td width="500">
						<form action="EditarKit" method="POST">
							<input type="hidden" name="id"
								value="${c.id}"> <input type="text" name="kit"
								value="${c.kit }">
								<button type="button" class="btn btn-success" data-toggle="modal"
									data-target="#kit">
									<i class="fa fa-tasks"></i>
								</button>
								<button type="submit" class="btn btn-info">
									<i class="fas fa-edit"></i>
								</button>
								
						</form>
					</td>
				</tr>
			</c:forEach>

		</table>

		<!-- Modal -->
		<div class="modal fade" id="produccion" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">PRODUCCION</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Produccion" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										size="2" maxlength="4" name="etiquetas" id="txtTitulo"
										class="form-control" placeholder="Titulo de la etiqueta"
										required>
								</div>
							</div>


							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${prod}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="implantacion" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">IMPLANTACION</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Implantacion" method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="implantacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>
							</div>

							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${impla}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="montajes" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Montajes</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="TareaMontaje" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${ta}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<br />
		<div class="wrap-input100 validate-input"
			data-validate="Name is required"></div>
		<!-- Modal -->
		<div class="modal fade" id="postventa" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">POSTVENTA</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Postventa" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${post}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<br />
		<!-- Modal -->
		<div class="modal fade" id="resultado_campaña" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Resultado campaña</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Resultado_campaña" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${resul}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>


		<!-- Modal -->
		<div class="modal fade" id="video" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Video/reportaje fin</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Video" method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>
							</div>

							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${vi}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="kit" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Kit para el cliente</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Kit" method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${kit}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="container-contact100-form-btn">
			<div class="wrap-contact100-form-btn">
				<div class="contact100-form-bgbtn"></div>
				<button class="contact100-form-btn" onclick="window.location.href='http://localhost:8080/org/'">
					<span> Crear tarea </span>
				</button>
			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="concurso" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">CONCURSO</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Concurso" method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${com}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="briefing" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Briefing</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Briefing" method="POST" enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>
							</div>

							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${bri}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="propuesta_diseño" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Propuesta de diseño</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="Propuesta" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${pro}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="estudio_costes" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="tituloEvento">Estudio costes</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<form action="EstudioCostes" method="POST"
						enctype="multipart/form-data">
						<div class="modal-body">
							<div class="form-row">
								<div class="form-group col-md-12">
									<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
									<input type="text" name="titulo" id="txtTitulo"
										class="form-control" placeholder="Titulo de la tarea" required>
									<input type="hidden" name="estado_generalactivacion"
										value="PTESPLANIFICACION">
								</div>

								<div class="form-row">
									<div class="form-group col-md-6">
										<a href="#hometrabajador" data-toggle="collapse"
											aria-expanded="false"> <i class="fas fa-caret-down"></i>
											Asignado a
										</a>
										<ul class="collapse list-unstyled" id="hometrabajador">
											<!-- Tabla de tiendas -->
											<table border="1" cellpadding="5" cellspacing="5">
												<tr>
													<th>Nombre</th>
													<th>Añadir</th>

												</tr>
												<c:forEach items="${trabajador}" var="us" varStatus="estado">
													<tr id="trabajadores">
														<td><c:out value="${us.nombre}" /></td>
														<td><center>
																<input type="checkbox" name="equipo"
																	value="${us.id_trabajadores}" />
															</center></td>
													</tr>
												</c:forEach>
											</table>

										</ul>
									</div>
									<div class="form-group col-md-6">
										<i class="fas fa-calendar-alt"></i> <label>Fecha/entrega</label>
										<input type="text" class="form-control"
											data-provide="datepicker" name="fechaentrega"
											id="sandbox-container" required>
									</div>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-4">
									<i class="fas fa-chart-line"></i> Estados<br /> <select
										name="fases">
										<option value="concurso">Concurso</option>
										<option value="produccion">Produccion</option>
										<option value="implantacion">Implantacion</option>
										<option value="postventa">Postventa</option>
									</select>
								</div>
								<div class="form-group col-md-8">
									<i class="fas fa-tags"></i> Etiquetas<input type="text"
										name="etiquetas" id="txtTitulo" class="form-control"
										placeholder="Titulo de la etiqueta" required>
								</div>

							</div>
							<div class="form-group">
								<i class="fas fa-paperclip"></i> <label for="briefing">
									Adjunto</label> <input type="file" name="adjunto"
									class="form-control-file" id="exampleFormControlFile1">
							</div>
							<div class="form-group">
								<i class="fas fa-align-left"></i> <label> Descripcion:</label>
								<textarea name="descripcion" id="txtDescripcion" rows="3"
									class="form-control" required></textarea>
							</div>
							<div class="form-group">
								<i class="far fa-comment"></i> <label> COMENTARIOS: </label> <br />
								<table width="100%" border="1" cellpadding="0" cellspacing="0"
									bordercolor="#000000">
									<c:forEach items="${est}" var="c" varStatus="estado">
										<tr>
											<td><c:out value="${c.comentarios}" /></td>
										</tr>
									</c:forEach>
								</table>
								<input type="text" name="comentarios" id="txtDescripcion"
									placeholder="Introducir comentario" class="form-control"
									required />
							</div>
						</div>
						<div class="modal-footer">

							<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
								Cambios</button>
							<button type=button class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="modal fade" id="miModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h4 class="modal-title" id="myModalLabel">Esto es un modal</h4>
					</div>
					<div class="modal-body">Texto del modal</div>
				</div>
			</div>
		</div>

	</div>




	<div id="dropDownSelect1"></div>


	<!--===============================================================================================-->
	<script src="resources/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/bootstrap/js/popper.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
	<!--===============================================================================================-->
	<script src="resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="resources/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="resources/js/main.js"></script>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script type="text/javascript">

$('table button').bind('click', function (e) {       
    $(this).parent().parent().addClass('redBackground');    
});
</script>

	<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>
	<script type="text/javascript">
		$('#sandbox-container').datepicker({
			format : "yyyy-mm-dd",
			language: "es"
		});
</script>
</body>
</html>
