

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
	integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU"
	crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<html>

<head>
<style>
	td#proyecto{
	
		width: 3px;
		
	}

</style>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/prueba.ico">
<title>GESTOR DE CUENTAS</title>
<!-- librerias de bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- Aï¿½adir jquery -->
<link rel="stylesheet" href="resources/css/jquery-ui.min.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>GESTOR DE CUENTAS</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Our Custom CSS -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
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
<style>
.Disponible {
	background-color: #2E9AFE;
	color: #ffffff;
	border-radius: 20px;
}
</style>
<style>

#mdialTamanio{

  width: 800px;
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
}

tr:nth-child(even) {
  background-color: #dddddd;
}

</style>

<script type="text/javascript"
	src="http://maps.google.com/maps/api/js?key=AIzaSyD8gjODLsQu3CTVAiNWHRahmTYl7DiEiEc&callback=initMap"></script>
</head>

<body background="${pageContext.request.contextPath}/resources/img/Logo_Zirigaña.png">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
		<a class="navbar-brand" href="http://localhost:8080/org/">PRODUCCIONES ZIRIGAÑA</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			<li class="nav-item"><a class="navbar-brand"
				href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
				title="Correo">
				<i class="fas fa-envelope"></i>	
			</a></li>
			<li class="nav-item"><a class="navbar-brand"
				href="http://localhost:8080/org/GestorCuentas" title="Gestor de cuentas"> <i
					class="fas fa-address-book"></i>
			</a></li>
			<li class="nav-item"><a class="navbar-brand"
				href="http://localhost:8080/org/MisTareas" title="Mis tareas"><i class="fas fa-check-circle">
				</i></a>
			</li>
				</ul>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0"></ul>

			<a tabindex="0" class="btn btn-lg btn-primary" role="button"
				data-html="true" data-toggle="popover" data-trigger="focus"
				title="<b>${usuario.email}</b>"
				data-content="<div>
		   <b>
		   				<form action='Logout' method='POST'>
		   					<button class='btn btn-danger ' type='submit'>Cerrar Sesion</button>
		   				</form>	
		   </b> 
		   
		   				</div>"><i
				class="fa fa-user"></i></a>
		</div>
	</nav>

	<div class="row">
		<div class="col-md-2">
			<!-- Sidebar  -->
			<nav id="sidebar">
				<div class="sidebar-header">
					<h3>Producciones Zirigaña</h3>
					<strong>PZ</strong>
				</div>

				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i>
						<!--    <span>Toggle Sidebar</span> -->
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>
				</div>

				<ul class="list-unstyled components">
					<li class="active"><a href="#homeSubmenu"
						data-toggle="collapse" aria-expanded="false"
						class="dropdown-toggle"> <i class="fas fa-home"></i> Inicio
					</a>
						<ul class="collapse list-unstyled" id="homeSubmenu">
							<li><a href="#" data-toggle="modal" data-target="#Rutas">Rutas</a></li>
						</ul>
					<li><a href="#pageSubmenu" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle"> <i
							class="fas fa-user"></i> Equipos
					</a>
						<ul class="collapse list-unstyled" id="pageSubmenu">
							<li><a href="#" data-toggle="modal" data-target="#Equipos">Ver</a></li>
							<li><a href="#" data-toggle="modal"
								data-target="#NuevoEquipo">Añadir</a></li>
							
						</ul></li>


					<ul class="collapse list-unstyled" id="editar">
						<li><a href="#" data-toggle="modal"
							data-target="#ModificarCampaña">Campaña</a></li>
					</ul>
					<li><a href="http://localhost:8080/org/Montajes"> <i
							class="far fa-chart-bar"></i>Montajes
					</a></li>
					<li><a href="http://localhost:8080/org/Centros"> <i
							class="fas fa-briefcase"></i> Centros
					</a></li>
					<li><a href="http://localhost:8080/org/Campañas"> 
					<i class="fab fa-readme"></i>Campañas
					</a></li>
					<li><a href="http://localhost:8080/org/Contacto"> 
					<i class="fas fa-phone"></i> Contacto
					</a></li>
				</ul>


			</nav>
		</div>

		<td>
			<div class="container">

				<table class="table table-hover">
					<thead>
						<tr>
						<th>
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#Entregar">Tareas que se tienen que entregar</button>
						
						
								
								<!-- Modal -->
								<div class="modal fade" id="Entregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h5 class="modal-title" id="exampleModalLabel">Tareas a entregar</h5>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
								          <span aria-hidden="true">&times;</span>
								        </button>
								      </div>
								      <div class="modal-body">
								      	<table border="1" cellpadding="5" cellspacing="5">
										<c:forEach items="${fechaentrega}" var="c" varStatus="estado">
											<tr id="trabajadores">


												<td><c:out value="${c.id}" /></td>
												<td><c:out value="${c.fechaentrega}" /></td>
												<td><c:out value="${c.titulo}" /></td>
												
											</tr>
										</c:forEach>
										</table>
									
									</div>
								
								
								    </div>
								  </div>
								</div>
							 
							
							</th>
							
						</tr>
						<tr>
							<th>Proyectos recientes</th>
						</tr>
					</thead>
					<tbody>
						<tr>

							<th>

								<form action="NuevoProyecto" method="POST">
									<button type="submit" class="btn btn-success"
										style='width: 70px; height: 40px'>
										<i class="fa fa-plus" aria-hidden="true"></i>
									</button>
								</form>
							</th>
						</tr>
						<tr>
							
								<table width="100%" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000">
								  <tr>
								    <th>NOMBRE</th>
								    <th>DEPARTAMENTOS</th>
								    <th>TIPO DE PROYECTO</th>
								    <th>DESCRIPCION</th>
								  </tr>
							<c:forEach items="${proyectos}" var="pro" varStatus="estado">
								  <tr>
								  	<form action="Tareas" method="POST">
									 
									 <input type="hidden" id="nombre" name="nombre" value="${pro.nombre}">
									<td width="500"><button type="submit" class="btn btn-info" >${pro.nombre}</button></td>
									</form>
								    <td width="500"> <c:out value="${pro.departamentos}" /></td>
								    <td width="500"><c:out value="${pro.tipo_proyecto}" /></td>
								    <td width="500"><c:out value="${pro.descripcion}" /></td>
								  </tr>
								
							</c:forEach>
							</table>
						
						</tr>

					</tbody>
					
				</table>
				</div>

		</td>
		<div class="modal fade" id="NuevoEquipo" tabindex="-1" ole="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" id="mdialTamanio">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Añadir Equipo</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form action="NuevoEquipo" method="POST">
							<div class="modal-body">
								<div class="form-group">
									<label>Titulo del equipo:</label>
									<textarea name="titulo" id="titulo" rows="1"
										class="form-control" required></textarea>
								</div>
								<a href="#hometrabajador" data-toggle="collapse"
									aria-expanded="false"><i class="fas fa-caret-down"></i>
									Trabajadores </a>
								<ul class="collapse list-unstyled" id="hometrabajador">
									<!-- Tabla de tiendas -->
									<table border="1" cellpadding="5" cellspacing="5">
										<tr>
											<th>Nombre</th>
											<th>Email</th>
											<th>Añadir al Equipo</th>

										</tr>
										<c:forEach items="${trabajador}" var="us" varStatus="estado">
											<tr id="trabajadores">


												<td><c:out value="${us.nombre}" /></td>
												<td><c:out value="${us.email}" /></td>
												<td><input type="checkbox" name="equipo" value="${us.id_trabajadores}" /></td>
											</tr>
										</c:forEach>
									</table>

								</ul>
								
								<!-- CENTROS -->
								<br/><a href="#hometrabajador" data-toggle="collapse"
									aria-expanded="false"><i class="fas fa-caret-down"></i>
									Centros </a>
								<ul class="collapse list-unstyled" id="hometrabajador">
									<!-- Tabla de tiendas -->
									<table id="centros" border="1" cellpadding="5" cellspacing="5"  style="width:100%">
										<tr>
											<th>Nombre</th>
											<th>Direccion</th>
											<th>Cadena</th>
											<th>Provincia</th>
											<th>Añadir al Equipo</th>

										</tr>
										<c:forEach items="${centros}" var="us" varStatus="estado">
											<tr id="trabajadores">


												<td><c:out value="${us.centros}" /></td>
												<td><c:out value="${us.direccion}" /></td>
												<td><c:out value="${us.cadena}" /></td>
												<td><c:out value="${us.provincia}" /></td>
												<td><input type="checkbox" name="centros"
													value="${us.id_centro}" /></td>
											</tr>
										</c:forEach>
									</table>

								</ul>
								
								<!-- CAMPAÑAS -->
								<br/>	<a href="#hometrabajador" data-toggle="collapse"
									aria-expanded="false"><i class="fas fa-caret-down"></i>
									Campañas </a>
								<ul class="collapse list-unstyled" id="hometrabajador">
									<!-- Tabla de tiendas -->
									<table border="1" cellpadding="5" cellspacing="5" style="width:100%">
										<tr>
											<th>Nombre</th>
											<th>Marca</th>
											<th>Ubicacion</th>
											<th>Añadir al equipo</th>

										</tr>
										<c:forEach items="${campanha}" var="us" varStatus="estado">
											<tr id="trabajadores">


												<td><c:out value="${us.nombre}" /></td>
												<td><c:out value="${us.marca}" /></td>
												<td><c:out value="${us.localizacion}" /></td>
												<td><input type="checkbox" name="campañas"
													value="${us.id_campanha}" /></td>
											</tr>
										</c:forEach>
										
									</table>

								</ul>
								<br/>
								
								<div class="form-row">
									<div class="form-group col-md-6">
										<br/>
										<label for="MensajeEditado">Fecha Inicio</label>
										<div class="input-group date">
											<input type="text" class="form-control"
												data-provide="datepicker" name="Fecha_Inicio"
												id="sandbox-container" required>
		
										</div>
									</div>
									<div class="form-group col-md-6">
										<label for="MensajeEditado"><br/>Fecha Fin</label>
										<div class="input-group date">
											<input type="text" class="form-control"
												data-provide="datepicker" name="Fecha_Fin"
												id="sandbox-container2" required>
		
										</div>
									</div>
								</div>

								<div class="form-group">
									<label>Descripcion:</label>
									<textarea name="txtDescripcion" id="txtDescripcion" rows="3"
										class="form-control" required></textarea>
								</div>


							</div>
							<div class="modal-footer">

								<button type="submit" id="btnAgregar" class="btn btn-success">Guardar
									Cambios</button>
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Cerrar</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		<!-- Equipos -->
	<div class="modal fade" id="Equipos" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">EQUIPOS</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<table idth="100%" border="1" bordercolor="#0000FF" cellspacing="10" cellpadding="10">
							
							<tr style="background: #BDBDBD">
								<th>Titulo</th>
								<th>Descripcion</th>
								<th>Fecha Inicio</th>
								<th>Fecha Final</th>
								<th>Borrar</th>
							</tr>
							<c:forEach items="${equipos}" var="user" varStatus="estado">
								<td><c:out value="${user.titulo}" /></td>
								<td><c:out value="${user.descripcion}" /></td>
								<td><c:out value="${user.fecha_in}" /></td>
								<td><c:out value="${user.fecha_fin}" /></td>
							<form action="BorrarEquipo">
								<td><input type="hidden" name="id" value="${user.id}"><button type="submit" class="btn btn-danger">Borrar</button></td>
							</form>
								<c:if test="${estado.count%2 == 0}">
									<tr style="background: #81BEF7">
								</c:if>
								
								<c:if test="${estado.count%2 != 0}">
									<tr style="background: #01A9DB">
								</c:if>
							</c:forEach>
						</table>
				</div>

			</div>
		</div>
	</div>
		<script type="text/javascript">
		$('#sandbox-container').datepicker({
			format : "yyyy-mm-dd",
			language: "es"
		});
	</script>
	<script type="text/javascript">
		$('#sandbox-container2').datepicker({
			format : "yyyy-mm-dd",
			language: "es"
		});
	</script>
		<script>
	$(function(){
	    // Enables popover
	    $("[data-toggle=popover]").popover();
	});
	</script>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous">
	</script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/popper.min.js"></script>
</body>

</html>

