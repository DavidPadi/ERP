<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="resources/css/bootstrap.min.css" rel="stylesheet"> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>

/* CSS PARA EDITAR LA TABLA DE TIENDAS */

            table#tablatiendas {
                border: none;
                width: 100%;
                border-collapse: collapse;
            }

            td#tablatiendas { 
                padding: 5px 10px;
                text-align: center;
                border: 1px solid #999;
            }

            tr#tablatiendas:nth-child(1) {
                background: #dedede;
            }
        
</style>
<style>

/* CSS PARA EDITAR LA TABLA DE TIENDAS */
			#popover{
				width: 10px;
				
				
			}
			#casa{
			
				background: #FFFFFF;
			}
			#caja{
			  
			  width: 100%;
			  position: fixed;
			  z-index: 100;
						
			}
			#tabla{
				
				padding-top: 100px;			
			}
			#items{
				padding: 2px 2px;
                text-align: center;
			}
            table#tablamaterial {
                border: none;
                width: 100%;
                border-collapse: collapse;
            }

            td#tablamaterial { 
                padding: 5px 10px;
                text-align: center;
                border: 1px solid #999;
            }

            tr#tablamaterial:nth-child(1)  {
                background: #dedede;
            }
        
</style>
<style>

	div.tablatienda {
		
		
	    width: 400px;
	    overflow-x: scroll;
    	overflow-y: scroll;
	}

</style>
<style>
		div.tablamaterial {
				
				height: 200px;
			    width: 400px;
			    overflow-x: scroll;
		    	overflow-y: scroll;
			}

</style>
<meta charset="UTF-8">
<link rel="shortcut icon" href="resources/img/prueba.ico">
<title>Gestor de Cuentas</title>
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
<style type="text/css">
.txtAlign { TEXT-ALIGN: right }
</style>
<style>
.Disponible {
	background-color: #2E9AFE;
	color: #ffffff;
	border-radius: 20px;
}
div.scroll{
	
	height: 600px;
	width: auto;
	overflow-y: scroll;
	
}


</style>

<!-- script de full calendar -->

<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD8gjODLsQu3CTVAiNWHRahmTYl7DiEiEc&callback=initMap"></script> 
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
			<a class="navbar-brand" href="http://localhost:8080/org/">PRODUCCIONES ZIRIGAÑA</a>
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			
			
			<li class="nav-item"><a class="navbar-brand"
				href="https://accounts.google.com/signin/v2/identifier?continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&service=mail&sacu=1&rip=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"
				title="Correo">
				<i class="fas fa-envelope"></i>	
			</a></li>
			<li class="nav-item"><a class="navbar-brand" href="http://localhost:8080/org/Calendario" title="Calendario">
		         <i class="fa fa-calendar" aria-hidden="true"></i>
		        </a></li>
			<li class="nav-item"><a class="navbar-brand"
				href="http://localhost:8080/org/MisTareas" title="Mis tareas"><i class="fas fa-check-circle">
				</i></a></li>
		      <li class="nav-item">
		        
		      </li>
			
			</ul>
		    
		<a tabindex="0"
		   class="btn btn-lg btn-primary" 
		   role="button" 
		   data-html="true" 
		   data-toggle="popover" 
		   data-trigger="focus" 
		    title="<b>${usuario.email}</b>" 
		   data-content="<div>
		   <b>
		   				<form action='Logout' method='POST'>
		   					<button class='btn btn-danger ' type='submit'>Cerrar Sesion</button>
		   				</form>	
		   </b> 
		   				</div>"><i class="fa fa-user"></i></a>
		     </div>
	</nav>
</div>


<div id="tabla">
  <table class="table">
    <tr>
        <td style="width:15px;">
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
							<li><a href="#" data-toggle="modal"
								data-target="#Rutas">Rutas</a></li>
							<li><a href="#" data-toggle="modal"
								data-target="#Equipos">Equipos</a></li>
						</ul></li>
					<li><a href="http://localhost:8080/org/Montajes"> <i class="far fa-chart-bar"></i>Montajes </a></li>
					<li><a href="http://localhost:8080/org/Centros"> <i class="fas fa-briefcase"></i> Centros</a></li>
					<li><a href="http://localhost:8080/org/Campañas"> 
					<i class="fab fa-readme"></i>Campañas
					</a></li>
					<li><a href="http://localhost:8080/org/Contacto"> 
					<i class="fas fa-phone"></i> Contacto
					</a></li>
				</ul>


			</nav>
			</td>
			<td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	       		 <div class="scroll"  style="background-color: #E4E7E6;">
				  	<div class="card-body">
				  	
					    <h5 class="card-title">PTES. PLANIFICACION</h5>
					    <c:forEach items="${montajes}" var="mon" varStatus="estado">
							<c:if test="${mon.estado_generalactivacion == 'PTESPLANIFICACION'}">
								<option type="hidden" value="${mon.id}">${mon.marca}</option>
					    		<p class="card-text">${mon.title}</p><span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
					  		</c:if>
						</c:forEach>
					
				  </div>
				<center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ptesplanificacion">Añadir una tarjeta</button> </center>
				</div>
			</div>
			
        </td>
        <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	         <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">SIN ARTES FINALES</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'SINARTESFINALES'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				  <center><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#sinartesfinales">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
      <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	         <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">LISTOS PARA MONTAR</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'MONTAR'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				 <center> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#montar">Añadir una tarjeta</button></center>
				</div>
			</div>
			
        </td>
       <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	         <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">LDM FRANQUIZIADOS RECHAZADOS</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'CANCELADO'}">
							<option type="hidden" >${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				    	
				  		</c:if>
					</c:forEach>
					
				  </div>
				<center>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ldmrechazados">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
        <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	        <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">LDM FRANQUIZIADOS EJECUTADOS</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'EJECUTADOS'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				<center>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ldmejecutados">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
        <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	        <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">EN CURSO</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'IMPLANTADO'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				 <center> <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#encurso">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
       <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	        <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">LISTOS PARA DESMONTAR</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'DESMONTAR'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				<center>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#desmontar">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
       <td style="width:15px; border-color: #000000; border-width:1px; border-style: solid">
	        <div class="card" style="width: 14rem;">
	        <div class="scroll"  style="background-color: #E4E7E6;">
				  <div class="card-body">
				    <h5 class="card-title">DESMONTADOS</h5>
				    <c:forEach items="${montajes}" var="mon" varStatus="estado">
						<c:if test="${mon.estado_generalactivacion == 'DESMONTADOS'}">
							<option type="hidden" value="${mon.id}">${mon.marca}</option>
				    		<p class="card-text">${mon.title}</p>
				    		<span class="fas fa-clock"></span><p class="card-text">${mon.end}</p>
				  		</c:if>
					</c:forEach>
					
				  </div>
				<center>  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#desmontados">Añadir una tarjeta</button></center>
			</div>
			</div>
        </td>
    </tr>

  </table>
</div>
	<!-- DIV row para el contenido -->

<!-- Modal -->
	<div class="modal fade" id="ptesplanificacion" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="PTESPLANIFICACION">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>



<!-- Modal -->
	<div class="modal fade" id="sinartesfinales" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="SINARTESFINALES">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="montar" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="MONTAR">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="ldmrechazados" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="LDMRECHAZADOS">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="ldmejecutados" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="LDMEJECUTADOS">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="encurso" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="ENCURSO">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="desmontar" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="DESMONTAR">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>
		<!-- Modal -->
	<div class="modal fade" id="desmontados" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento">Nueva Tarjeta</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="Tarjetapteplanificacion" method="POST" enctype="multipart/form-data">
					<div class="modal-body">
						<div class="form-row">
							<div class="form-group col-md-12">
								<i class="fas fa-clipboard-list"></i> <label> Titulo: </label>
								 <input type="text" name="title" id="txtTitulo" class="form-control" placeholder="Titulo de la tarjeta" required>
								 <input type="hidden" name="estado_generalactivacion" value="DESMONTADOS">
							</div>
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Montaje: </label>
									<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje"  id="sandbox-container2" placeholder="Fecha prevista montaje" required>
							</div>
							<div class="form-group col-md-6">
								<i class="fas fa-clock"></i> <label> Desmontaje </label>
									<input type="text" class="form-control"data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container1" placeholder="Fecha prevista desmontaje" required>
								</div>
							</div>
							<div class="form-row">
							<div class="form-group col-md-6">
								<i class="fas fa-chalkboard-teacher"></i> <label> Codigo Cliente: </label>
									<input type="text" class="form-control" name="cc"  id="sandbox-container2" placeholder="Codigo Cliente" required>
							</div>
							<div class="form-group col-md-6"> 
								<i class="fas fa-chart-line"></i> <label> Marca: </label>
									<br/><input type="text" class="form-control"  name="marca" id="sandbox-container1" placeholder="Marca" required>
								</div>
							</div>
						</div>
				
						<div class="form-group">
							<i class="fas fa-paperclip"></i> <label for="briefing"> Adjunto</label> <input
								type="file" name="adjunto" class="form-control-file"
								id="exampleFormControlFile1">
						</div>
						<div class="form-group">
							<i class="fas fa-align-left"></i> <label> Descripcion:</label>
							<textarea name="descripcion_trabajo" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>
						<div class="form-group">
						<i class="far fa-comment"></i> <label> COMENTARIOS: </label>
							<br />
							<textarea name="comentarios" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<i class="fas fa-palette"></i> <label><br />Color:</label> <input
								type="color" name="color" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
						</div>
					</div>
					<div class="modal-footer">

						<button type="submit" id="btnAgregar" class="btn btn-success">Guardar Cambios</button>
						<button type=button class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
					</div>
				</form>
			</div>

		</div>
	</div>


	<script type="text/javascript">
		$('#sandbox-container2').datepicker({
			format : "yyyy-mm-dd",
			language: "es"
		});
	</script>
	<script type="text/javascript">
		$('#sandbox-container1').datepicker({
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
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/popper.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.9.0/bootstrap-progressbar.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-progressbar/0.9.0/bootstrap-progressbar.min.js"></script>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>

</html>

