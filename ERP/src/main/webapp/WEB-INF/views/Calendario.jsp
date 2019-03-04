<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<html>

<head>
<style>

/* CSS PARA EDITAR LA TABLA DE TIENDAS */
		.fc-event-time{
			   display : none;
			}
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
td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}
            tr#tablatiendas:nth-child(1) {
                background: #dedede;
            }
        
</style>
<style>

/* CSS PARA EDITAR LA TABLA DE TIENDAS */
			#casa{
			
				background: #FFFFFF;
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
<title>CALENDARIO</title>
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
<style>
.Disponible {
	background-color: #2E9AFE;
	color: #ffffff;
	border-radius: 20px;
}
</style>

<!-- script de full calendar -->
<script>
        $(document).ready(function(){

          $('#calendario').fullCalendar({
        	  customButtons: {
        		    myCustomButton: {
        		      text: 'custom!',
        		      click: function() {
        		        alert('clicked the custom button!');
        		      }
        		    }
        		  },
              header:{

                  left: 'today,prev,next',
                  center: 'title',
                  right: 'month,basicWeek,basicDay,agendaWeek'

              },
              
              dayClick: function(fecha,jsEvent,view){
				//fecha es un date, es decir, un objeto de tipo moment
				//jsEvent es un objeto de Javascript que almacena las coordenadas cuaando se pincha x e y
				//view es un objeto del tipo ViewObject se puede ver como mes, semana, dia etc...
				
				//evento.modal es el nombre del id del modal para que cuando pinchemos en un dia se abra un modal
                $("#evento").modal();
                $("#fechainicio").val(fecha.format());
              },
              
              //para mostrar los eventos en los dias correspondientes en el calendario
			  events: {
				  url: 'http://localhost:8080/org/Eventos1',
				  cache: true
			  },
			  
              eventClick:function(calEvent,jsEvent,view){
            	//Mostrar la informacion en los inputs cuando pinches en un evento
                $('#tituloEvento').html(calEvent.title);
                $('#txtDescripcion').val(calEvent.descripcion);
                $('#id').val(calEvent.id);
                $('#txtColor').val(calEvent.color);

                FechaHora=calEvent.start._i.split(" ");
                $('#fechainicio').val(FechaHora[0]);
                $('#sandbox-container2').val(calEvent.end);

                $("#evento").modal();
              },
              editable: true,
              //cambiar los eventos de un dia a otro
              eventDrop:function(calEvent){
                $('#txtTitulo').val(calEvent.title);
                $('#txtColor').val(calEvent.color);
                $('#txtDescripcion').val(calEvent.descripcion);

                var fechaHora=calEvent.start.format().split("T");
                $('#fechainicio').val(FechaHora[0]);
               


                //cuando el usuario mueve un evento se modifica
                RecolectarDatos();
                //Enviar informacion a nuestro servidor modificado
                //EnviarInformacion('modificar',NuevoEvento,true);
                //muestra el evento al calendario sin envio a nuestro servidor ni a la bbdd
                $('#calendario').fullCalendar('renderEvent',NuevoEvento);
                $("#evento").modal('toggle');

              }



          });
        
	});
</script>
<script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyD8gjODLsQu3CTVAiNWHRahmTYl7DiEiEc&callback=initMap"></script> 
</head>

<body background="resources/img/textura_fondo.jpg">
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
				</i></a></li>
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
					<li><a href="http://localhost:8080/org/Montajes"> <i class="far fa-chart-bar"></i>Montajes </a></li>
					<li><a href="http://localhost:8080/org/Centros"> <i class="fas fa-briefcase"></i> Centros</a></li>
					<li><a href="http://localhost:8080/org/Campañas"><i class="fab fa-readme"></i>Campañas</a></li>
					<li><a href="http://localhost:8080/org/Contacto"><i class="fas fa-phone"></i> Contacto</a></li>
					
				</ul>


			</nav>
		</div>
		<div class="col-md-6">
			<div id='calendario'></div>
		</div>
		<div class="col-md-4">
			<div id="mapa" style="width: 470px; height: 300px; border: 4px solid #FF6600;">
			</div>
		</div>
</div>
	<!-- Modal -->
	<div class="modal fade" id="evento" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="tituloEvento"></h5>
					<button type="button" class="close" data-dismiss="modal"aria-label="Close">
						<h5 class="modal-title" id="id"></h5>
					</button>
				</div>
				<form action="EditarEquipo" method="POST">
					<div class="modal-body">
						<a href="#hometrabajador" data-toggle="collapse"
							aria-expanded="false"> <i class="fas fa-caret-down"></i>Trabajadores
						</a>
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
										<td><input type="checkbox" name="equipo"
											value="${us.id_trabajadores}" /></td>
									</tr>
								</c:forEach>
							</table>

						</ul>
		
						
						<div class="form-row">
							<div class="form-group col-md-6">
								<label>Fecha inicio: </label> <input type="text" id=fechainicio
									name="Fecha_Inicio" required />
							</div>
							<div class="form-group col-md-6">
								<label for="MensajeEditado">Fecha Fin</label>
								<div class="input-group date">
									<input type="text" class="form-control"
										data-provide="datepicker" name="Fecha_Fin"
										id="sandbox-container2" required>

								</div>
							</div>
						</div>

						<div class="form-group">
							<label>Descripcion:</label>
							<input type="hidden" name="id"  size="10" />
							<textarea name="txtDescripcion" id="txtDescripcion" rows="3"
								class="form-control" required></textarea>
						</div>

						<div class="form-group">
							<label><br />Prioridad del evento (color):</label> <input
								type="color" name="txtColor" id="txtColor" value="#ff0000"
								class="form-control" style="height: 36px;">
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

	<!-- Nuevo GPV  -->
	<div class="modal fade" id="NuevoGPV" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Nuevo GPV</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="NuevoGPV" method="POST">
						<div class="form-row">
								<div class="form-group col-md-9">
									<div class="form-group">
										<label for="GPV">Nombre</label> 
											<input type="text" class="form-control" id="nombregpv" name="nombregpv">
									</div>
								</div>
								<div class="form-group col-md-3">
									<div class="form-group">
										<label for="Fecha">Telefono</label>
											<input type="text" class="form-control" id="telefono" name="telefono">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-6">
									<div class="form-group">
										<label for="Fecha">Email</label>
											<input type="text" class="form-control" id="email" name="email">
									</div>
								</div>
								<div class="form-group col-md-6">
									<div class="form-group">
										<label for="Estado">Zona</label><br /> 
											<select name="zona">
												<option value="norte">norte</option>
												<option value="nordeste">nordeste</option>
												<option value="centro">centro</option>
												<option value="levante">levante</option>
												<option value="andaluciaoccidental">andalucia occidental</option>
												<option value="andaluciaoriental">andalucia oriental</option>
												<option value="baleares">baleares</option>
											</select>
									</div>
								</div>
						</div>
									<div class="form-group">
										<label>Indique a que tienda esta asociado este gpv: </label> 
										<br/>
										<select name="tienda">
											<c:forEach items="${tienda}" var="ti" varStatus="estado">
												<option type="hidden" value="${ti.id_tienda}">${ti.nombre}
												</option>
											</c:forEach>
										</select>
									</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Cerrar</button>
					<button type="submit" class="btn btn-primary">Guardar Cambios</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	
	<!-- Nuevo Material  -->
	<div class="modal fade" id="NuevoMaterial" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Material nuevo</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="material_nuevo" method="POST">
						<div class="form-group">
							<label for="nombrematerial">Nombre Material</label> <input
								type="text" class="form-control" name="nombrematerial">
						</div>
						<div class="form-group">
							<label for="Cadena">Cantidad Disponible</label> <input
								type="text" class="form-control" name="cantidadisponible">
						</div>


						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">Cerrar</button>
						<button type="submit" class="btn btn-primary">Guardar
							Cambios</button>
					</form>
				</div>

			</div>

		</div>
	</div>
	
	<!-- Nueva tienda  -->


	<!--  Aï¿½adir camapaï¿½a modal -->

	
	

<!-- Ubicanos -->


	<div class="modal fade" id="Ubicanos" tabindex="-1" ole="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel"> Ubicanos </h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<iframe src="https://www.google.com/maps/d/embed?mid=18C7oXZZeNrcpPlXT-NAZ_0xJilg0AzhK" width="470" height="480"></iframe>
				</div>

			</div>
		</div>
	</div>
	<!-- Rutas -->
	<div class="modal fade" id="Rutas" tabindex="-1" ole="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Rutas</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">

					<div id="mapa_ruta" style="width: 470px; height: 300px; border: 4px solid #FF6600;"><iframe src="https://www.google.com/maps/d/embed?mid=18C7oXZZeNrcpPlXT-NAZ_0xJilg0AzhK" width="460" height="300"></iframe></div>
					<div id="direcciones" style="width: 710px"></div>
					<form action="#"
						onsubmit="setDirections(this.from.value, this.to.value, this.locale.value); return false"
						name="form">

						<br /> Origen: <input type="text" size="25"
							id="fromAddress" name="from" /> <br /> 
						Destino: <input name="to" type="text" id="toAddress" size="25" /><br> Idioma:
						<select id="locale" name="locale">
							<option value="es" selected>Castellano</option>
							<option value="en">English</option>
							<option value="fr">French</option>
							<option value="de">German</option>
							<option value="ja">Japanese</option>
						</select> <input type="submit" name="Submit"
							value="Calcular Ruta" />

					</form>
				</div>

			</div>
		</div>
	</div>
	
	<div class="modal fade" id="Equipos" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Equipos</h5>
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
		$('.clockpicker').clockpicker();
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
	<script type="text/javascript">
		$('#sandbox-container2').datepicker({
			format : "yyyy-mm-dd",
			language: "es"
		});
	</script>
	<script type="text/javascript">
		$('#sandbox-container').datepicker({
			format : "yyyy-mm-dd",
			language : "es"
		});
	</script>
	<script type="text/javascript">
		$('#sandbox-container1').datepicker({
			format : "yyyy-mm-dd",
			language : "es"
		});
	</script>
	<script type="text/javascript">
		function CompararFechas() {

			var fecha_aux = document.getElementById("Fecha_Inicio").value
					.split("/");
			var Fecha1 = new Date(parseInt(fecha_aux[2]),
					parseInt(fecha_aux[1] - 1), parseInt(fecha_aux[0]));

			var fecha_aux2 = document.getElementById("Fecha_Fin").value
					.split("/");
			var Fecha2 = new Date(parseInt(fecha_aux2[2]),
					parseInt(fecha_aux2[1] - 1), parseInt(fecha_aux2[0]));

			Hoy = new Date();//Fecha actual del sistema

			//comprobamos fecha inicio
			if (Fecha1 < Hoy) {
				alert("La fecha introducida es anterior a Hoy");
			}

			//comprobamos fecha fin
			if (Fecha2 < Hoy) {
				alert("La fecha introducida es anterior a Hoy");
			}

			var año_in = Fecha1.getFullYear();
			var mes_in = Fecha1.getMonth();
			var dia_in = Fecha1.getDate();
			var año_fin = Fecha2.getFullYear();
			var mes_fin = Fecha2.getMonth();
			var dia_fin = Fecha2.getDate();
			//Ahora nos disponemos a comparar fecha inicio y fecha fin

			if (año_in == año_fin && mes_in == mes_fin && dia_in >= dia_fin) {
				alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.");
			} else {
				if (año_in > año_fin) {
					alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.");
				} else {
					if (año_in == año_fin && mes_in > mes_fin) {
						alert("ERROR. La fecha de finalizacion es anterior a la fecha de inicio.")
					}
				}
			}

		}
	</script>
	<script>
	$(function(){
	    // Enables popover
	    $("[data-toggle=popover]").popover();
	});
	</script>
	<script>
		var NuevoEvento;
		$('#btnAgregar').click(function() {
			RecolectarDatos();
			//Enviar informacion a nuestro servidor
			//muestra el evento al calendario sin envio a nuestro servidor ni a la bbdd
			$('#calendario').fullCalendar('renderEvent', NuevoEvento);
			$("#evento").modal('toggle');

		});
		$('#btnBorrar').click(function() {
			RecolectarDatos();
			if (confirm('¿Estas seguro de que quieres borrar?')) {
			
				 $('#calendario').fullCalendar('removeEvents',NuevoEvento);
				  $("#evento").modal('toggle');
				//elimina los datos de la bbdd
			} else {
				RecolectarDatos();
			}

		});
		$('#btnModificar').click(function() {
			RecolectarDatos();
		});

		function RecolectarDatos() {
			NuevoEvento = {
				
				start : $('#Fecha_Inicio').val(),
				//Si luego queremos poner una fecha final a un evento
				end : $('#Fecha_Fin').val(),
				title : $('#txtTitulo').val(),
				descripcion : $('#txtDescripcion').val(),
				color : $('#txtColor').val()

			};

		}
/*		function EnviarInformacion(accion, objEvento, modal) {
			$.ajax({

				type : 'GET',
				url : '/org/EnviarInformacion?accion=' + accion,
				data : objEvento,
				success : function(msg) {
					if (msg) {
						$('#calendario').fullCalendar('refetchEvents');
						if (!modal) {
							$("#evento").modal('toggle');
						}
					}
				},
				error : function() {
					alert("Hay un error");
				}

			})
		}	*/

		
	</script>
		<script type="text/javascript">
		var divMapa=document.getElementById('mapa');
		navigator.geolocation.getCurrentPosition(fn_ok , fn_mal);
		function fn_mal(){}
		function fn_ok(rta){
			var lat= rta.coords.latitude;
			var lon= rta.coords.longitude;
			
			var gLatLon= new google.maps.LatLng(lat,lon);
			var objConfig={
					zoom: 17,
					center: gLatLon
			}
			var gMapa= new google.maps.Map(divMapa, objConfig);
			var objConfigMarker={
					position: gLatLon,
					map: gMapa,
					title: "Usted esta aqui"
			}
			var gMarker= new google.maps.Marker(objConfigMarker);
			
		}
		</script>
		<script type="text/javascript">

		var map = new GMap(document.getElementById("mapa")); map.addControl(new GLargeMapControl());

		map.centerAndZoom(new GPoint(-8.4419, 43.2819), 8);
		map.addControl(new GMapTypeControl());
		map.addControl(new GScaleControl());
		map.addControl(new GOverviewMapControl());
		map.setMapType(G_NORMAL_MAP); 

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
</body>

</html>