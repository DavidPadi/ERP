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
<title>MONTAJES</title>
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
<title>PRODUCCIONES ZIRIGAÑA</title>
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
 <button type="button" class="btn btn-success" style='width: 70px; height: 40px' data-toggle="modal" data-target="#NuevaCentro"><i class="fa fa-plus" aria-hidden="true"></i></button>
		<table class="tableizer-table" id="tabla-pz">
			<tbody id="tabla_sel">

				<tr style="background-color: #AD9D9E;">
					<th><center><b>CC</b></center></th>
					<th><center><b>MARCA</b></center></th>
					<th><center><b>Nº</b></center></th>
					<th><center><b>ACTIVACIÓN</b></center></th>
					<th><center><b>ESTADO GENERAL ACTIVACIÓN</b></center></th>
					<th><center><b>ZONA</b></center></th>
					<th><center><b>CADENA</b></center></th>
					<th><center><b>CENTRO</b></center></th>
					<th><center><b>DIRECCIÓN</b></center></th>
					<th><center><b>LOCALIDAD</b></center></th>
					<th><center><b>PROVINCIA</b></center></th>
					<th><center><b>DETALLE EXPOSICIÓN</b></center></th>
					<th><center><b>TIPOLOGIA CLIENTE</b></center></th>
					<th><center><b>FECHA PREVISTA MONTAJE</b></center></th>
					<th><center><b>FECHA PREVISTA DESMONTAJE</b></center></th>
					<th><center><b>GPV</b></center></th>
					<th><center><b>TELEFONO.</b></center></th>
					<th><center><b>MAIL</b></center></th>
					<th><center><b>COMUNICACIONES</b></center></th>
					<th><center><b>PERSONA Y CARGO</b></center></th>
					<th><center><b>TELEFONO</b></center></th>
					<th><center><b>MAIL</b></center></th>
					<th><center><b>COMUNICACIONES</b></center></th>
					<th><center><b>PERMITE LA PROMO</b></center></th>
					<th><center><b>¿HAY PRODUCTO?</b></center></th>
					<th><center><b>¿TV?</b></center></th>
					<th><center><b>FECHA NO POSIBLE/CERRADA</b></center></th>
					<th><center><b>OBSERVACIONES PLANIFICACION</b></center></th>
					<th><center><b>RESULTADO PLANIFICACION</b></center></th>
					<th><center><b>FECHA CERRADA CON CENTRO</b></center></th>
					<th><center><b>HORA IMPLANTACION</b></center></th>
					<th><center><b>FECHA</b></center></th>
					<th><center><b>OK IMPLANTADO</b></center></th>
					<th><center><b>QUE SE HA IMPLANTADO</b></center></th>
					<th><center><b>FOTO</b></center></th>
					<th><center><b>ESPACIO</b></center></th>
					<th><center><b>NO PERMITEN IMPLANTAR</b></center></th>
					<th><center><b>TV NO LOCALIZADA</b></center></th>
					<th><center><b>PRODUCTO: NO HAY O INSUFICIENTE</b></center></th>
					<th><center><b>NUMERO VISITAS</b></center></th>
					<th><center><b>OBSERVACIONES IMPLANTACIÓN</b></center></th>
					<th><center><b>FECHA</b></center></th>
					<th><center><b>RESULTADO DESMONTAJE</b></center></th>
					<th><center><b>OBSERVACIONES DESMONTAJE</b></center></th>
					<th><center><b>RESP. ZONA PZ </b></center></th>
					<th><center><b>PZ</b></center></th>
					<th><center><b>SUBCONTRATA</b></center></th>
					<th><center><b>ALMACEN</b></center></th>
					<th><center><b>DESCRIPCION TARJETA</b></center></th>
					<th><center><b>RUTA TARJETA</b></center></th>
					<th><center><b>PRIORIDAD</b></center></th>
					<th><center><b>OPCIONES</b></center></th>
					<th></th>
				</tr>
				<c:forEach items="${montajes}" var="user" varStatus="estado">
					<tr>
					<form action="EditarMontaje" method="POST">
						<td id="1" contenteditable='true'><div id="Container"><input type="text" name="cc" size="5" value="${user.cc}" /></td>
						<td id="2" >
							<select name="marca">
										<option>${user.marca}</option>				
							</select>
						</td>
						<td id="3" contenteditable='true'><input type="text" name="numero" size="5" value="${user.numero}" /></td>
						<td id="4" >
							<select name="activacion">
									<option>${user.title}</option>
							</select>
						</td>
						<td id="5">
							<select name="estado_activacion">
										<option>${user.estado_generalactivacion}</option>
										<option value="PTESPLANIFICACION">PTESPLANIFICACION</option>
										<option value="SINARTESFINALES">SINARTESFINALES</option>
										<option value="MONTAR">MONTAR</option>
										<option value="CANCELADO">CANCELADO</option>
										<option value="EJECUTADOS">EJECUTADOS</option>
										<option value="IMPLANTADO">IMPLANTADO</option>
										<option value="DESMONTAR">DESMONTAR</option>
										<option value="DESMONTADOS">DESMONTADOS</option>
							</select>
						</td>
						<td id="6" >
							<select name="zona">
									<option>${user.zona}</option>
							</select>
						</td>
						<td id="7" contenteditable='true'><input type="text" name="cadena"  size="10" value="${user.cadena}" /></td>
						<td id="8" contenteditable='true'>
					<!--		<select name="centro">
								  <c:forEach items="${centro}" var="databaseValue">
								    <option value="${databaseValue}">
								        ${databaseValue}
								    </option>
								  </c:forEach>
							</select>-->
						 	<select name="centro">
									<option type="hidden" value="${user.id}">${user.centro}</option>
							</select>  
						</td>
						<td id="9" contenteditable='true'><input type="text" name="direccion"  value="${user.descripcion}" /></td>
						<td id="10" contenteditable='true'><input type="text" name="localidad"  size="10" value="${user.localidad}" /></td>
						<td id="11" contenteditable='true'><input type="text" name="provincia" size="10" value="${user.provincia}" /></td>
						<td id="12" > 
							<select name="detalle_exposicion">
									<option>${user.detalle_exposicion}</option>
							</select>
						</td>
						<td id="13">
							<select name="tipologia_cliente">
									<option>${user.tipologia_cliente}</option>
						</select></td>
						<td id="14" contenteditable='true'>
							<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_montaje" id="fechamontaje" value="${user.start}"> 
						</td>
						<td id="15" contenteditable='true'>
							<input type="text" class="form-control" data-provide="datepicker" name="fechaprevista_desmontaje" id="sandbox-container2" value="${user.end}">
						</td>
						<td id="16" contenteditable='true'><input type="text" name="nombre_gpv"  value="${user.nombre_gpv}" /></td>
						<td id="17" contenteditable='true'><input type="text" name="tlfn_gpv"  size="8" value="${user.tlfn_gpv}" /></td>
						<td id="18" contenteditable='true'><input type="text" name="mail_gpv"  value="${user.mail_gpv}" /></td>
						<td id="19" contenteditable='true'><input type="text" name="comunicaciones_gpv"  value="${user.comunicaciones_gpv}" /></td>
						<td id="20" contenteditable='true'><input type="text" name="persona_cargo"  size="10" value="${user.persona_cargo}" />
						<td id="21" contenteditable='true'><input type="text" name="tlfn" size="8" value="${user.tlfn}" /></td>
						<td id="22" contenteditable='true'><input type="text" name="mail_centro" size="10" value="${user.mail_centro}" /></td>
						<td id="23" contenteditable='true'><input type="text" name="comunicaciones_centro" size="10" value="${user.comunicaciones_centro}" /></td>
						<td id="24" contenteditable='true'><input type="text" name="permite_promo" size="5" value="${user.permite_promo}" /></td>
						<td id="25" contenteditable='true'><input type="text" name="hay_producto" size="5" value="${user.hay_producto}" /></td>
						<td id="26" contenteditable='true'><input type="text" name="tv" size="5" value="${user.tv}" /></td>
						<td id="27" contenteditable='true'>
							<input type="text" class="form-control" data-provide="datepicker" name="fechanoposible_cerrada" id="sandbox-container2" value="${user.fechanoposible_cerrada}">
						</td>
						<td id="28" contenteditable='true'><input type="text" name="observaciones_planificacion" size="30" value="${user.observaciones_planificacion}" /></td>
						<td id="29" contenteditable='true'><input type="text" name="resultado_planificacion"  value="${user.resultado_planificacion}" /></td>
						<td id="30" contenteditable='true'>
							<input type="text" class="form-control" data-provide="datepicker" name="fechacerradaconcentro" id="sandbox-container2" value="${user.fechacerradaconcentro}">
						</td>
						<td id="31" contenteditable='true'><input type="text" name="hora_implantacion"  value="${user.hora_implantacion}" /></td>
						<td id="32" contenteditable='true'>
							<input type="text" class="form-control" data-provide="datepicker" name="fecha_implantacion" id="sandbox-container2" value="${user.fecha_implantacion}">
						</td>
						<td id="33" contenteditable='true'><input type="text" name="implantado" size="10" value="${user.implantado}" /></td>
						<td id="34" contenteditable='true'><input type="text" name="quesehaimplantado"  size="10" value="${user.quesehaimplantado}" /></td>
						<td id="35" contenteditable='true'><input type="text" name="foto" size="5"  value="${user.foto}" /></td>
						<td id="36" contenteditable='true'><input type="text" name="espacio" size="30"  value="${user.espacio}" /></td>
						<td id="37" contenteditable='true'><input type="text" name="no_permitenimplantar" size="3" value="${user.no_permitenimplantar}" /></td>
						<td id="38" contenteditable='true'><input type="text" name="tv_nolocalizada"  size="5" value="${user.tv_nolocalizada}" /></td>
						<td id="39" contenteditable='true'><input type="text" name="nohayinsuficienteproducto" size="5" value="${user.nohayinsuficienteproducto}" /></td>
						<td id="40" contenteditable='true'><input type="text" name="numero_visitas" size="5"  value="${user.numero_visitas}" /></td>
						<td id="41" contenteditable='true'><input type="text" name="observaciones_implantacion"  size="20" value="${user.observaciones_implantacion}" /></td>
						<td id="42" contenteditable='true'>
							<input type="text" size="10" data-provide="datepicker" name="fecha_desmontaje"   value="${user.fecha_desmontaje}">
						</td>
						<td id="43" contenteditable='true'><input type="text" name="resultado_desmontaje"  value="${user.resultado_desmontaje}" /></td>
						<td id="44" contenteditable='true'><input type="text" name="observaciones_desmontaje"  value="${user.observaciones_desmontaje}" /></td>
						<td id="45" contenteditable='true'><input type="text" name="responsable_zona" size="10" value="${user.responsable_zona}" /></td>
						<td id="46" contenteditable='true'><input type="text" name="pz"  size="10" value="${user.pz}" /></td>
						<td id="47" contenteditable='true'><input type="text" name="subcontrata"  size="10" value="${user.subcontrata}" /></td>
						<td id="48" contenteditable='true'><input type="text" name="almacen" size="10"  value="${user.almacen}" /></td>
						<td id="49" contenteditable='true'><input type="text" name="descripcion_tarjeta" size="10"  value="${user.descripcion_tarjeta}" /></td>
						<td id="50" contenteditable='true'><c:out value="${user.ruta}"  /></td>
						<td id="51"><input type="color" name="txtColor"  value="${user.color}"  style="height: 30px;  width:100px;"/></td>
						<td id="52" contenteditable='true'><center><button type="submit" class="btn btn-warning"  style='width:70px; height:30px'>EDITAR</button></center></td>
						</form>
						
						<form action="BorrarMontaje" method="POST">
						 <input type="hidden" id="id" name="id" value="${user.id}">
						<td id="53" contenteditable='true'><center><button type="submit" class="btn btn-danger"  style='width:70px; height:30px'><i class="fa fa-trash" aria-hidden="true"></i></button></center></td>
						</form>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			</div>
			
	<script>
	$("button").click(function(){
	  var $tabla = $("#tabla-pz");

	  // obtenemos el tipo a crear
	  var tipo = parseInt($("#tipo-callizas").val());
	  
	  // procedemos a crear los elementos en base al tipo
	  
	  var $tr = $("<tr></tr>");
	  for(var i = 0;i < tipo;i++)
	  {
	    // creamos la columna o td
	    var $td = $("<td><input type='text'></td>")
	    // le asignamos su id
	    .attr("id", " "+(i+1));
	    if(i==49){
	    	 var $td = $("<td><a href='https://html.com/attributes/a-href/'>Guardar</a></td>")
	    }
	    $tr.append($td);
	  }
	  
	  
	  $tabla.append($tr);

	});
</script>

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
