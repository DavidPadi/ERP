<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- librerias de bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<!-- A�adir jquery -->
<link rel="stylesheet" href="resources/css/jquery-ui.min.css">
<script type="text/javascript" src="resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-ui.js"></script>
<link href="resources/css/bootstrap-datepicker.css" rel="stylesheet">
<script src="resources/js/bootstrap-datepicker.min.js"></script>
<script src="resources/js/bootstrap-datepicker.es.min.js"></script>
<link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
	type="text/css" rel="stylesheet">

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="shortcut icon" href="resources/img/prueba.ico">
<title>CAMPA�AS</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<LINK REL="stylesheet" TYPE="text/css"
	HREF="resources/estilo/css/bootstrap.min.css" />
<title>PRODUCCIONES ZIRIGA�A</title>
<style>
.button {
    background-color: #f44336; 
    border: none;
    color: white;
    padding: 2px 2px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 12px;
    margin: 4px 2px;
    cursor: pointer;
}

	.btn2 {
	    background-color: #F61A04;
	    border: none;
	    color: white;
	    padding: 14px 18px;
	    font-size: 10px;
	    cursor: pointer;
	
}
.btn1 {
	    background-color: #F61A04;
	    border: none;
	    color: white;
	    padding: 12px 16px;
	    font-size: 10px;
	    cursor: pointer;
	}
	#caja{
			  background: #CDC6C6;
			  width: 100%;
			  position: fixed;
			  z-index: 200;
			  top: 0; 		
			}
	#tabla{
			
			padding-top: 110px;	
			
		}
</style>


<style type="text/css">
table.tableizer-table {
	font-size: 12px;
	border: 1px solid #CCC;
	font-family: Arial, Helvetica, sans-serif;
	background-color: #FFFFFF;
}

.tableizer-table td {
	padding: 4px;
	margin: 3px;
	border: 1px solid #CCC;
}

.tableizer-table th {
	background-color: #104E8B;
	color: #FFF;
	font-weight: bold;
	
}

body {
	font-family: Gill Sans MT;
	padding: 10px;
}

#caja {
	background: 
	width: 8000px;
	border: 1px solid white;
	margin: 5px auto;
	padding: 1em;
	border-radius: 6px;
}

th, td {
	padding: 15px;
}

#navbar {
	width: 10px;
}
</style>

</head>
<body style="background-color: #72959C;">

<div id="caja">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
			<a class="navbar-brand" href="http://localhost:8080/org/">PRODUCCIONES ZIRIGA�A</a>
			
			<ul class="navbar-nav mr-auto mt-2 mt-lg-0">
			
		      <li class="nav-item">
		        <a class="navbar-brand" href="http://localhost:8080/org/Calendario" title="Calendario">
		         <i class="fa fa-calendar" aria-hidden="true"></i>
		        </a>
		      </li>
		      <li class="nav-item">
		        <a class="navbar-brand" href="http://localhost:8080/org/Logout" title="Desconectar">
		         <i class="fa fa-ban" aria-hidden="true"></i>
		        </a>
		      </li>
					
			</ul>
		   				
		     </div>
	</nav>
</div>

<div id="tabla">
<input type="button" class="btn1" id="clonar" value="CLONAR FILA" />
 <button type="button" class="btn btn-success" style='width: 70px; height: 40px' data-toggle="modal" data-target="#NuevaCampa�a"><i class="fa fa-plus" aria-hidden="true"></i></button>
		<table class="tableizer-table" id="tabla-pz">
			<tbody id="tabla_sel">

				<tr style="background-color: #AD9D9E;">
					<th><center><b>ESTADO</b></center></th>
					<th><center><b>MARCA</b></center></th>
					<th><center><b>NOMBRE</b></center></th>
					<th><center><b>TIENDAS</b></center></th>
					<th><center><b>LOCALIZACION</b></center></th>
					<th><center><b>COMENTARIOS</b></center></th>
					<th><center><b>INTERLOCUTOR</b></center></th>
					<th><center><b>FECHA DE INICIO</b></center></th>
					<th><center><b>FECHA FIN</b></center></th>
					<th><center><b>RUTA</b></center></th>
					<th><center><b>OPCIONES</b></center></th>
					<th></th>
					
				</tr>
				<c:forEach items="${campanha}" var="a" varStatus="estado">
					<tr>
					<form action="Editar_Campa�a" method="POST" enctype="multipart/form-data">
						<td id="1" contenteditable='true'>
						
							<input type="hidden" name="id_camp" size="15" value="${a.id_campanha}" />
							<input type="text" name="estado" size="15" value="${a.estado}" />
						</td>
						<td id="2" >
							
							<input type="text" name="Marca" size="5" value="${a.marca}" />
						</td>
						<td id="3" contenteditable='true'>
							<input type="text" name="Nombre_camp" size="15" value="${a.nombre}" />
						</td>
						<td id="4" >
							<input type="text" name="cantidad_tiendas" size="1" value="${a.cantidad_tiendas}" />
						</td>
						<td id="5" >
							<input type="text" name="localizacion_geo" size="10" value="${a.localizacion}" />
						</td>
						<td id="6" contenteditable='true'>
							<input type="text" name="comentarios" size="20" value="${a.comentarios}" />
						</td>
						<td id="7" contenteditable='true'>
						 	<input type="text" name="interlocutor" size="10" value="${a.interlocutor}" />
						</td>
						<td id="8" contenteditable='true'>
							<input type="text" name="Fecha_Inicio" size="10" value="${a.fecha_inicio}" />
						</td>
						<td id="9" contenteditable='true'>
							<input type="text" name="Fecha_Fin" size="10" value="${a.fecha_fin}" />
						</td>
						<td id="10" contenteditable='true'>
							<input type="file" name="briefing" size="10" value="${a.ruta}" />
						</td>
						<td id="52" contenteditable='true'>
							<center><button type="submit" class="btn btn-warning"  style='width:70px; height:30px'>EDITAR</button></center>
						</td>
						</form>
						
						<form action="BorrarCampa�a" method="POST">
						 	<input type="hidden" id="id" name="id" value="${a.id_campanha}">
							<td id="53" contenteditable='true'><center><button type="submit" class="btn btn-danger"  style='width:70px; height:30px'><i class="fa fa-trash" aria-hidden="true"></i></button></center></td>
						</form>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</div>
	<div class="modal fade" id="NuevaCampa�a" tabindex="-1" ole="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">A�adir Campa�a</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="Campa�a_Nueva" method="POST" enctype="multipart/form-data">
						<div class="form-row">
								<div class="form-group col-md-4">
										<label for="Cliente">Codigo Campa�a</label> 
										<input type="text" class="form-control" name="id_camp" aria-describedby="emailHelp">
									</div>
								<div class="form-group col-md-8">
											Cliente<br />
										<select name="cliente">
											<c:forEach items="${cliente}" var="client" varStatus="estado">
												<option type="hidden" value="${client.id_cliente}">${client.nombre}
												</option>
											</c:forEach>
										</select>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="Marca">Marca</label> 
											<input type="text" class="form-control" name="Marca">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="Nombre_Campa�a">Nombre Campa�a</label> 
											<input type="text" class="form-control" name="Nombre_camp">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-2">
									<div class="form-group">
										<label for="cantidad_tiendas">Tiendas</label> 
											<input type="text" class="form-control" name="cantidad_tiendas">
									</div>
								</div>
								<div class="form-group col-md-10">
									<div class="form-group">
										<label for="localizacion_geo">Localizacion geografica</label> 
											<input type="text" class="form-control" name="localizacion_geo">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Interlocutor</label> 
											<input type="text" size="100" class="form-control" name="interlocutor">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="estado">Estado</label> <br /> 
											<select name="estado">
												<option value="concursosolodise�o">Concurso (Solo dise�o)</option>
												<option value="concursodise�oimpl">Concurso (Dise�o implantacion)</option>
												<option value="concursoimpl">Concurso (Implantacion)</option>
												<option value="propuestagrafica">Propuesta Grafica</option>
												<option value="aceptacion">Aceptacion</option>
												<option value="propdenegada">Propuesta denegada</option>
												<option value="enrevision">En revision</option>
												<option value="propuestaeconomica">Propuesta Economica</option>
											</select>
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-6">
									<label for="MensajeEditado">Fecha Inicio</label>
										<div class="input-group date">
											<input type="text" class="form-control" data-provide="datepicker" name="Fecha_Inicio" id="sandbox-container">

										</div>
								</div>
								<div class="form-group col-md-6">
									<label for="MensajeEditado">Fecha Fin</label>
										<div class="input-group date">
											<input type="text" class="form-control" data-provide="datepicker" name="Fecha_Fin" id="sandbox-container1">

										</div>
								</div>
						</div>
						<div class="form-group">
							<label for="comentarios">Comentarios</label> <input type="text"
								size="100" class="form-control" name="comentarios">
						</div>
						<div class="form-group">
							<label for="briefing">Adjuntar briefing</label> 
											<input type="file" name="briefing" class="form-control-file" id="exampleFormControlFile1">
							
						</div>

						
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Cerrar</button>
							<button type="submit" class="btn btn-primary">Guardar
								Cambios</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
			


 <script>
 $(document).ready( function(){
	 tabla = $('#tabla_sel');
	 td = $('td:first', tabla);
	 $('#Button1').on('click', function (){
	  td.clone().appendTo(tabla).find('tr').html('add');
	 });
	 $('#Button2').on('click', function (){
		  td.clone().appendTo(tabla).find('tr').html('add');
		 });
	 $('#Button3').on('click', function (){
		  td.clone().appendTo(tabla).find('tr').html('add');
		 });
   
	});
</script>
<script>
 $("#clonar").on("click", function(){
	 
	    $('#tabla-pz tr:last').clone().appendTo('#tabla-pz ');
	  
	});
</script>
	

<script type="text/javascript">
		$('#fechamontaje').datepicker({
			format : "yyyy-mm-dd",
			language : "es"
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
</body>
</html>