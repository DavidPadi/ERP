<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<link rel="shortcut icon" href="resources/img/prueba.ico">
    <title>Administrador</title>

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <!-- Our Custom CSS -->
    <link rel="stylesheet" href="resources/css/style4.css">
    <!-- Bootstrap core CSS -->
  <!--  <link href="css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

    <!-- css para calendario -->
      <link href="resources/css/agenda.css" rel="stylesheet">
    <script src="resources/js/bootstrap.min.js"></script>
</head>

<body>
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

        <!-- Page Content  -->
      <div class="row; ml-1: 1rem">
        <div class="container">

            <!-- -NUEVO TRABAJADOR--------------------->



              <!-- CALENDARIO CON TAREAS DIARIAS -->


<div class="row">
   <div class="col-lg-12 col-md-12">

              <h2>Agenda</h2>
                  <p class="lead">
                     Produccionez Zirigaña
                  </p>

                  <hr />

                  <div class="agenda">
                      <div class="table-responsive">
                          <table class="table table-condensed table-bordered">
                            <center> <iframe src="https://calendar.google.com/calendar/embed?mode=WEEK&amp;height=600&amp;wkst=2&amp;hl=es&amp;bgcolor=%2399ff99&amp;src=ujaen.es_i723nlti4v53srqgr5af7o9v3k%40group.calendar.google.com&amp;color=%23B1365F&amp;ctz=Europe%2FMadrid" style="border-width:0" width="800" height="600" frameborder="0" scrolling="no">
                            </iframe></center>
                          </table>
                        </div>
                      </div>

                  </div>
              </div>

              <div class="card">
                <h5 class="card-header">Subir archivo</h5>
                <div class="card-body">
                  <h5 class="card-title">Tipo excel</h5>
                  <p class="card-text">introduce archivo en extension .xsdl</p>
                  <form>
                    <div class="form-group">
                      <input type="file" class="form-control-file" id="exampleFormControlFile1">
                    </div>
                  </form>
                </div>
              </div>
              <div class="modal fade" id="modalContactForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Nuevo trabajador</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Nuevo_trabajador" method="POST">
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <i class="fa fa-user prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form34"> Nombre y Apellidos</label>
                            <input type="text" id="form34" name="nombre_trabajador" class="form-control validate" required>

                        </div>

                        <div class="md-form mb-5">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form29">Email</label>
                            <input type="email" id="form29" name="email"class="form-control validate" required>

                        </div>
						
						     <div class="md-form mb-5">
                            <i class="fa fa-thumbtack"></i>
                            <label data-error="wrong" data-success="right" for="form29">Contraseña</label>
                            <input type="text" id="form" name="pass"class="form-control validate" required>

                        </div>
                        <div class="md-form mb-5">
                        <h2> Tipo trabajador:<br /> </h2>
								  <select name="tipo_trabajadores">    
								       <option name="montador" type="hidden" value="1" selected="selected">Montador</option>
								       <option name="gestor" type="hidden" value="2">Gestor</option>
								       <option name="diseñador" type="hidden" value="3">Diseñador</option>
								   </select>

                        </div>

                        
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-unique">Enviar <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                   </form>
                </div>
            </div>
        </div>
        <!-- Modal para editar trabajador -->
        <div class="modal fade" id="modalEditarForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" id="addBookDialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <h4 class="modal-title w-100 font-weight-bold">Editar trabajador</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="Editar_trabajador" method="POST">
                    <div class="modal-body mx-3">
                        <div class="md-form mb-5">
                            <i class="fa fa-user prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form34"> Nombre y Apellidos</label>
                            <input type="text" id="form34" name="nombre_trabajador" class="form-control validate" required>

                        </div>

                        <div class="md-form mb-5">
                            <i class="fa fa-envelope prefix grey-text"></i>
                            <label data-error="wrong" data-success="right" for="form34">Email</label>
                         <!--     <p class="form-control-static">${trab.email}</p>  -->
							<br/><input type="text" name="email" id="bookId" class="form-control validate" value=""/>
                        </div>
						
						     <div class="md-form mb-5">
                            <i class="fa fa-thumbtack"></i>
                            <label data-error="wrong" data-success="right" for="form29">Contraseña</label>
                            <input type="text" id="form" name="pass"class="form-control validate" required>

                        </div>
                        <div class="md-form mb-5">
                        <h2> Tipo trabajador:<br /> </h2>
								  <select name="tipo_trabajadores">    
								       <option name="montador" type="hidden" value="1" selected="selected">Montador</option>
								       <option name="gestor" type="hidden" value="2">Gestor</option>
								       <option name="diseñador" type="hidden" value="3">Diseñador</option>
								   </select>

                        </div>

                        
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <button class="btn btn-unique">Enviar <i class="fa fa-paper-plane-o ml-1"></i></button>
                    </div>
                   </form>
                </div>
            </div>
        </div>
        <div class="card">
          <h5 class="card-header">Nuevo Trabajador</h5>
          <div class="card-body">
            
              <div class="form-group">
                <button type="submit" class="btn btn-success" data-toggle="modal" data-target="#modalContactForm"  onclick="showCreateThanksYouForm(${trab.email})">Nuevo Trabajador</button>
              </div>
            
             <h4 >Lista de trabajadores</h4>            
                    <!-- tabla con la base de datos de trabajadores-->
                     <table border="1" cellpadding="5" cellspacing="5">
                     <tr>
                       <th>Email</th>
                       <th>Pass</th>
                       <th>Nombre</th>
                       <th>Tipo</th>
                      </tr>
                      <tr>
                       <c:forEach items="${trabajador}" var="trab" varStatus="estado">
                       <c:if test="${trab.tipo!=4 }">
	                       <td> <c:out value="${trab.email}"/> </td>
	                       <td> <c:out value="${trab.pass}"/> </td>
	                       <td> <c:out value="${trab.nombre}"/> </td>
	                       <td> <c:out value="${trab.tipo}"/> </td>
	                       <td>
	                     
	                       <form action="borrar_trabajador" method="POST">
		                       <input type="hidden" name="email" value="${trab.email}"/>
		                       <button type="submit" class="btn btn-danger">Borrar Trabajador</button>
		                    </form>
	                       </td>
	                       <td>
	                           <input type="hidden" name="email" value="${trab.email}"/>
		                       <button type="submit" class="btn btn-warning" data-toggle="modal" data-target="#modalEditarForm"  onclick="showCreateThanksYouForm(${trab.email})">Editar Trabajador</button>
		                    
	                       </td>
	                        </c:if> 
	                      </tr>  
                       </c:forEach>
                      
                       </table>
          </div>
        </div>
        
            
                       
       				 
        
         
            </div>
        </div> <!-- DIV row para el contenido -->
    </div>


    <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
    
    <script type="text/javascript">
    	$(document).on("click", ".open-AddBookDialog", function(){
    		var myBookId= $(this.)data('email');
    		$(".modal-body #bookId").val(myBookId);
    	})
    </script>
  <script type="text/javascript">  
    showCreateThanksYouForm (valor) {
    var valor = valor;
    $('#modal-create-thanks-you').modal('show')
	}
</script>
</body>

</html>
