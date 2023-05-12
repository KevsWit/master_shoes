<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<link href="css/estilos.css" rel="stylesheet" type="text/css">
	<title>Master Shoes</title>
</head>
<body>
<main>
	<header>
		<div align="center">
	        <img src="imagenes/mastershoes.png" height="300" width="300">
	    	<h1>Master Shoes</h1><hr>
	    	<h2>Registro</h2><br>
	    </div>
    </header>
    <nav style="background-color: #FFD100;">
    	<a href="index.jsp">Home</a>
       	<a href="catalogo.jsp">Ver Productos</a>
       	<a href="busqueda.jsp">Buscar Por Categoría</a>
       	<a href="login.jsp">Ingresa al sitio web</a>
       	<a href="contacto.jsp">Contactos</a>
  	</nav>
  	<div align="center" style="padding: 40px; background-color: #D6D6D6;">
	  	<form action="respuesta.jsp" method="post" name="formulario">
		   	<table border="1" >
		   		<tr><td>Nombre</td><td><input class="focus" type="text" name="txtNombre" required/>*</td></tr>
				<tr><td>Cédula</td><td>Por favor ingresar 10 dígitos<br><input class="focus" type="text" name="txtCedula" maxlength="10" required/>*</td></tr>
				<tr><td>Correo</td><td><input class="focus" type="email" name="correo" required/>*</td></tr>
				<tr><td>Estado Civil</td>
					<td>
						<select class="focus" name="cmbECivil">
							<option value="Soltero">Soltero</option>
							<option value="Casado">Casado</option>
							<option value="Divorciado">Divorciado</option>
							<option value="Viudo">Viudo</option> 
						</select>
					</td></tr>
				<tr><td>Lugar residencia</td>
					<td>
						<input class="focus" type="radio" name="rdResidencia" value="Sur"/>Sur
						<input class="focus" type="radio" name="rdResidencia" value="Norte"/>Norte
						<input class="focus" type="radio" name="rdResidencia" value="Centro"/>Centro
					</td>
				</tr>
				<tr><td>Foto</td>
					<td><input type="file" name="fileFoto" accept=".jpg, .jpeg, .png"/></td>
				</tr>
				<tr>
					<td>Mes y año de nacimiento</td>
					<td>
						<input type="month" name="fecha" required="required"/>*
					</td>
				</tr>
				<tr>
					<td>Color Favorito</td>
					<td>
						 <input type="color" name="colorFavorito"/>
					</td>
				</tr>
				<tr>
					<td>Hoja de vida</td>
					<td><input type="file" name="filePDF" accept="application/pdf" maxlength="5242880"/></td>
				</tr>
				<tr>
					<td><input type="submit"/></td>
					<td><input type="reset"/></td>
				</tr>		
			</table>
			<h3>*Campo obligatorio</h3>
		</form>
  	</div>
  	<footer>
	<ul >
		<li><a href="https://www.facebook.com/" class="enlace-footer">Facebook</a></li>
		<li><a href="https://www.instagram.com/" class="enlace-footer">Instagram</a></li>
	</ul>
	</footer>
</main>
</body>
</html>