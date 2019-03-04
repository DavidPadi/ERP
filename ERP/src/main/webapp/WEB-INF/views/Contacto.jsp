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
				         	<i class="fa fa-calendar" title="Calendario" aria-hidden="true"></i>
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
<center><table id="tabla-pz" class="tableizer-table">

<tbody id="tabla_sel">

<input type="button" class="btn1" id="clonar" value="CLONAR FILA" />
 <button type="button" class="btn btn-success" style='width: 70px; height: 40px' data-toggle="modal" data-target="#NuevoContacto"><i class="fa fa-plus" aria-hidden="true"></i></button>

<tr style="background-color:#AD9D9E;">
	
		<th id="1">CENTRO</th>
		<th id="2">PATRIMONIO</th>
		<th id="3">SEGURIDAD</th>
		<th id="4">MUELLE</th>
		<th></th>
		

</tr>

 <c:forEach items="${telefono}" var="tel" varStatus="estado">
 	<tr>
 		<form action="EditarCentro" method="POST">
	 		<td id="1" contenteditable='true'><input type="text" name="provincia" value="${tel.tlf_centro}"/></td>
	 		<td id="2" contenteditable='true'><input type="text" name="cadena"  value="${tel.tlf_patrimonio}"/></td>
	 		<td id="3" contenteditable='true'><input type="text" name="localidad" value="${tel.tlf_seguridad}"/></td>
	 		<td id="4" contenteditable='true'><input type="text" name="localidad" value="${tel.tlf_muelle}"/></td>
	 		<td id="5"><button type="submit" class="btn btn-warning">EDITAR</button></td>
 		</form>
 			
 	</tr>
 </c:forEach>
 </tbody>
 </table></center>
</div>

<div class="modal fade" id="NuevoContacto" tabindex="-1" ole="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Añadir Contacto</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="NuevoContacto" method="POST">
						<div class="form-row">
								<div class="form-group col-md-6">
										<label for="Cliente">Contacto Centro</label> 
										<input type="text" class="form-control" value="0" name="centro" aria-describedby="emailHelp">
									</div>
								<div class="form-group col-md-6">
										
										<label for="Cliente">Contacto Patrimonio</label> 
										<input type="text" class="form-control" value="0" name="patrimonio" aria-describedby="emailHelp">
									
								</div>
						</div>
						<div class="form-row">
								<div class="form-group col-md-6">
									<div class="form-group">
										<label for="Marca">Contacto Seguridad</label> 
											<input type="text" class="form-control" value="0" name="seguridad">
									</div>
								</div>
								<div class="form-group col-md-6">
									<div class="form-group">
										<label for="Nombre_Campaï¿½a">Contacto Muelle</label> 
											<input type="text" class="form-control" value="0" name="muelle">
									</div>
								</div>
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
 