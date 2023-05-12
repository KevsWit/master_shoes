<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>

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
	    	<h2>Categorķas</h2><br>
	    </div>
    </header>
    <nav style="background-color: #FFD100;">
    	<a href="index.jsp">Home</a>
       	<a href="catalogo.jsp">Ver Productos</a>
       	<a href="login.jsp">Ingresa al sitio web</a>
       	<a href="contacto.jsp">Contactos</a>
  	</nav>
  	<div align="center" style="padding: 40px; background-color: #D6D6D6;">
  		<form action="reporteCategoria.jsp" method="post" name="formCategoria">
  			Escoja la categorķa 
  			<% 
	  			Categoria cat=new Categoria();
	  			out.print(cat.mostrarCategoria());
	  		%>
	  		<br>
	  		<input type="submit"/>
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