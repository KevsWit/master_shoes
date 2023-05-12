<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" session="true" import="com.productos.seguridad.*"%>
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
	    	<h2>Productos</h2><br>
	    </div>
    </header>
    <nav style="background-color: #FFD100;">
   		<a href="index.jsp">Home</a>
       	<a href="busqueda.jsp">Buscar Por Categoría</a>
       	<a href="login.jsp">Ingresa al sitio web</a>
       	<a href="contacto.jsp">Contactos</a>
  	</nav>
	<div align="center" style="padding: 40px; background-color: #D6D6D6;">

		<%
		Usuario usuario=new Usuario();
		String nlogin=request.getParameter("usuario");
		String nclave=request.getParameter("clave");
		HttpSession sesion=request.getSession(); //Se crea la variable de sesión
		boolean respuesta=usuario.verificarUsuario(nlogin,nclave);
		if (respuesta)
		{
		sesion.setAttribute("usuario", usuario.getNombre()); //Se añade atributos
		sesion.setAttribute("perfil", usuario.getPerfil()); //Se añade atributos
		response.sendRedirect("menu.jsp"); //Se redirecciona a una página específica
		}
		else
		{
		%>
		<jsp:forward page="login.jsp">
		<jsp:param name="error" value="Datos incorrectos.<br>Vuelva a intentarlo."/>
		</jsp:forward>
		<%
		}
		%>

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