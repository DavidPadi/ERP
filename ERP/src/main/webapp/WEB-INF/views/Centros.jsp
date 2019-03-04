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
<link rel="shortcut icon" href="resources/img/prueba.ico">
<title>CENTROS</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<LINK REL="stylesheet" TYPE="text/css" HREF="resources/estilo/css/bootstrap.min.css"/>
<title>PRODUCCIONES ZIRIGAÑA</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<body style="background-color:#72959C;">
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
			
		      <li class="nav-item">
		        <a class="navbar-brand" href="http://localhost:8080/org/Calendario" title="Calendario">
		         <i class="fa fa-calendar" aria-hidden="true"></i>
		          
		        </a>
		      </li>
		      </ul>
		      <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
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
 <button type="button" class="btn btn-success" style='width: 70px; height: 40px' data-toggle="modal" data-target="#NuevoCentro"><i class="fa fa-plus" aria-hidden="true"></i></button>
<table id="tabla-pz" class="tableizer-table">

<tbody id="tabla_sel">


<tr style="background-color:#AD9D9E;">
	
		<th id="1">PROVINCIA</th>
		<th id="2">CADENA</th>
		<th id="3">LOCALIDAD</th>
		<th id="4">CENTRO</th>
		<th id="5">CP</th>
		<th id="6">DIRECCION</th>
		<th id="7">PLATAFORMA</th>
		<th id="8">ENVIAR DOC.</th>
		<th id="9">HORARIO PERSONAL EXTERNO</th>
		<th id="10">HORARIO MUELLE</th>
		<th id="11">CENTRO</th>
		<th id="12">PATRIMONIO</th>
		<th id="13">SEGURIDAD</th>
		<th id="14">MUELLE</th>
		<th id="15">PERSONA CONTACTO</th>
		<th id="16">RESPONSABLE</th>
		<th id="17">TELEFONO</th>
		<th id="18">FAX</th>
		<th id="19">CAJA CENTRAL</th>
		<th id="20">SEGURIDAD</th>
		<th id="21">PATRIMONIO</th>
		<th id="22">SERVICIO</th>
		<th id="23">RRHH</th>
		<th id="24">OFICINA</th>
		<th id="25">PERFUMERIAS</th>
		<th id="26">LIQUIDOS</th>
		<th id="27">ALIMENTACION</th>
		<th id="28">OPCIONES</th>
		<th id="29"></th>

</tr>

 <c:forEach items="${centros}" var="user" varStatus="estado">
 	<tr>
 		<form action="EditarCentro" method="POST">
	 		<td id="1" contenteditable='true'><input type="text" name="provincia" value="${user.provincia}"/></td>
	 		<td id="2" contenteditable='true'><input type="text" name="cadena"  value="${user.cadena}"/></td>
	 		<td id="3" contenteditable='true'><input type="text" name="localidad" value="${user.localidad}"/></td>
	 		<td id="4" contenteditable='true'>
	 			<select name="centros">
							<option type="hidden" value="${user.id_centro}">${user.centros}</option>
				</select>
				</td>
	 		<td id="5" contenteditable='true'><input type="text" name="cp"  value="${user.cp}"/></td>
	 		<td id="6" contenteditable='true'><input type="text" name="direccion"  value="${user.direccion}"/></td>
	 		<td id="7" contenteditable='true'><input type="text" name="plataforma"  value="${user.plataforma}"/></td>
	 		<td id="8" contenteditable='true'><input type="text" name="enviardoc"  value="${user.enviar_doc}"/></td>
	 		<td id="9" contenteditable='true'><input type="text" name="horario_personal_externo"value="${user.horario_personal_externo}"/></td>
	 		<td id="10" contenteditable='true'><input type="text" name="horariomuelle"  value="${user.horario_muelle}"/></td>
	 		<td id="11" contenteditable='true'><input type="text" name="tlfcentro"  value="${user.telefonocentro}"/></td>
	 		<td id="12" contenteditable='true'><input type="text" name="tlfpatrimonio"  value="${user.patrimonio}"/></td>
	 		<td id="13" contenteditable='true'><input type="text" name="tlfseguridad"  value="${user.seguridad}"/></td>
	 		<td id="14" contenteditable='true'><input type="text" name="tlfmuelle"  value="${user.muelle}"/></td>
	 		<td id="15" contenteditable='true'><input type="text" name="personacontacto"  value="${user.persona_contacto}"/></td>
	 		<td id="16" contenteditable='true'><input type="text" name="responsable"  value="${user.responsable}"/></td>
	 		<td id="17" contenteditable='true'><input type="text" name="telefono"  value="${user.telefono}"/></td>
	 		<td id="18" contenteditable='true'><input type="text" name="fax"  value="${user.fax}"/></td>
	 		<td id="19" contenteditable='true'><input type="text" name="cajacentral"  value="${user.caja_central}"/></td>
	 		<td id="20" contenteditable='true'> <input type="text" name="personalseguridad"  value="${user.personal_seguridad}"/></td>
	 		<td id="21" contenteditable='true'><input type="text" name="email"  value="${user.email}"/></td>
	 		<td id="22" contenteditable='true'><input type="text" name="servicio"  value="${user.servicio}"/></td>
	 		<td id="23" contenteditable='true'><input type="text" name="rrhh"  value="${user.rrhh}"/></td>
	 		<td id="24" contenteditable='true'><input type="text" name="oficina"  value="${user.oficina}"/></td>
	 		<td id="25" contenteditable='true'><input type="text" name="perfumeria"  value="${user.perfumeria}"/></td>
	 		<td id="26" contenteditable='true'><input type="text" name="liquidos"  value="${user.liquidos}"/></td>
	 		<td id="27" contenteditable='true'><input type="text" name="alimentacion"  value="${user.alimentacion}"/></td>
	 		<td id="28"><button type="submit" class="btn btn-warning">EDITAR</button></td>
 		</form>
 			<form action="BorrarCampaña" method="POST">
				<input type="hidden" id="id" name="id" value="${user.id_centro}">
				<td id="29" contenteditable='true'><center><button type="submit" class="btn btn-danger"  style='width:70px; height:30px'><i class="fa fa-trash" aria-hidden="true"></i></button></center></td>
			</form>
 	</tr>
 </c:forEach>
 </tbody>
 </table>
</div>

<div class="modal fade" id="NuevoCentro" tabindex="-1" ole="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Añadir Centro</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="GuardarCentro" method="POST" enctype="multipart/form-data">
						<div class="form-row">
								<div class="form-group col-md-4">
										<label for="Cliente">Provincia</label> 
										<input type="text" class="form-control" value="0" name="provincia" aria-describedby="emailHelp">
									</div>
								<div class="form-group col-md-8">
										
										<label for="Cliente">Cadena</label> 
										<input type="text" class="form-control" value="0" name="cadena" aria-describedby="emailHelp">
									
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="Marca">Localidad</label> 
											<input type="text" class="form-control" value="0" name="localidad">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="Nombre_Campaï¿½a">Centro</label> 
											<input type="text" class="form-control" value="0" name="centros">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-2">
									<div class="form-group">
										<label for="cantidad_tiendas">CP</label> 
											<input type="text" class="form-control" value="0" name="cp">
									</div>
								</div>
								<div class="form-group col-md-10">
									<div class="form-group">
										<label for="localizacion_geo">Direccion</label> 
											<input type="text" class="form-control" value="0" name="direccion">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Plataforma</label> 
											<input type="text" size="100" class="form-control" value="0" name="plataforma">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Enviar doc</label> 
											<input type="text" size="100" class="form-control" value="0" name="enviardoc">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Horario personal externo</label> 
											<input type="text" size="100" class="form-control" value="0" name="horario_personal_externo">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Horario muelle</label> 
											<input type="text" size="100" class="form-control" value="0" name="horariomuelle">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Centro</label> 
											<input type="text" size="100" class="form-control" value="0" name="tlfcentro">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Patrimonio</label> 
											<input type="text" size="100" class="form-control" value="0" name="tlfpatrimonio">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Seguridad</label> 
											<input type="text" size="100" class="form-control" value="0" name="tlfseguridad">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Muelle</label> 
											<input type="text" size="100" class="form-control" value="0" name="tlfmuelle">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Persona contacto</label> 
											<input type="text" size="100" class="form-control" value="0" name="personacontacto">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Responsable</label> 
											<input type="text" size="100" class="form-control" value="0" name="responsable">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Telefono</label> 
											<input type="text" size="100" class="form-control" value="0" name="telefono">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Fax</label> 
											<input type="text" size="100" class="form-control" value="0" name="fax">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Caja central</label> 
											<input type="text" size="100" class="form-control" value="0" name="cajacentral">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Seguridad</label> 
											<input type="text" size="100" class="form-control" value="0" name="personalseguridad">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Patrimonio</label> 
											<input type="text" size="100" class="form-control" value="0" name="email">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Servicio</label> 
											<input type="text" size="100" class="form-control" value="0" name="servicio">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">RRHH</label> 
											<input type="text" size="100" class="form-control" value="0" name="rrhh">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Oficina</label> 
											<input type="text" size="100" class="form-control" value="0" name="oficina">
									</div>
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-4">
									<div class="form-group">
										<label for="interlocutor">Perfumerias</label> 
											<input type="text" size="100" class="form-control"  value="0" name="perfumeria">
									</div>
								</div>
								<div class="form-group col-md-8">
									<div class="form-group">
										<label for="interlocutor">Liquidos</label> 
											<input type="text" size="100" class="form-control" value="0" name="liquidos">
									</div>
								</div>
						</div>
						<div class="form-group">
							<label for="briefing">Alimentacion</label> 
											<input type="text" name="alimentacion"  value="0" class="form-control" id="exampleFormControlFile1">
							
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
<!-- CLONAR FILA -->
<script>
 $("#clonar").on("click", function(){
	 
	    $('#tabla-pz tr:last').clone().appendTo('#tabla-pz ');
	  
	});
</script>

<!-- CLONAR COLUMNA -->
 <script>
 $(document).ready( function(){
	 tabla = $('#tabla_sel');
	 td = $('td:first', tabla);
	 $('#Button1').on('click', function (){
	  td.clone().appendTo(tabla).find('tr').html('add');
	 });
   
	});
</script>
 <script>
 $(document).ready( function(){
	 tabla = $('#tabla_sel');
	 td = $('td:first', tabla);
	 $('#Button2').on('click', function (){
	  td.clone().appendTo(tabla).find('tr').html('add');
	 });
   
	});
</script>


 </body>
 
 </html>
 