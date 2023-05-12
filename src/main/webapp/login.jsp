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
	    	<h2>Ingreso</h2><br>
	    </div>
    </header>
    <nav style="background-color: #FFD100;">
    	<a href="index.jsp">Home</a>
       	<a href="catalogo.jsp">Ver Productos</a>
       	<a href="busqueda.jsp">Buscar Por Categoría</a>
       	<a href="contacto.jsp">Contactos</a>
  	</nav>
  	<div align="center" style="padding: 40px; background-color: #D6D6D6;">
	  	<form action="validar.jsp" method="post" name="formularioLogin">
		   	<table border="1" >
		   		<tr><td>Usuario</td><td><input class="focus" type="text" name="usuario" required/>*</td></tr>
				<tr><td>Clave</td><td><input class="focus" type="password" name="clave" required/>*</td></tr>
				<tr>
					<td><input type="submit"/></td>
					<td><input type="reset"/></td>
				</tr>		
			</table>
			<h3>*Campo obligatorio</h3>
		</form>
		¿No tienes una cuenta? <a href="registro.jsp"> Regístrate</a>
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