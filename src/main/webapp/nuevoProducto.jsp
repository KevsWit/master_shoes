<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
	<%@ page import="java.io.File" %>
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
String usuario;
HttpSession sesion = request.getSession();
 if (sesion.getAttribute("usuario") == null) //Se verifica si existe la variable
 {
 %>
 <jsp:forward page="login.jsp">
 <jsp:param name="error" value="Debe registrarse en el sistema."/>
 </jsp:forward>
 <%
 }
 else
 {
 usuario=(String)sesion.getAttribute("usuario"); //Se devuelve los valores de atributos
 int perfil=(Integer)sesion.getAttribute("perfil");
 %>
 	<h1>Ingresar un producto</h1>
<h4>Bienvenido
<%
out.println(usuario);
 }
%>
</h4>
	<%String folderPath = "C:\\master_shoes";
				    File folder = new File(folderPath);
				
				    // Verificar si la carpeta existe
				    if (!folder.exists()) {
				        // Intentar crear la carpeta
				        boolean created = folder.mkdirs();
				    }%>
	<form action="registroProducto.jsp" method="post">
	<table>
		<tr>
			<td>Código Producto:</td>
			<td><input type="text" name="id" required="required">*</td>
		</tr>
		<tr>
			<td>Categoría</td>
			<td><% 
	  			Categoria cat=new Categoria();
	  			out.print(cat.mostrarCategoria());
	  		%>*</td>
		</tr>
		<tr>
			<td>Descripción</td>
			<td><input type="text" name="nombre" required="required">*</td>
		</tr>
		<tr>
			<td>Cantidad</td>
			<td><input type="text" name="cantidad" required="required">*</td>
		</tr>
		<tr>
			<td>Precio</td>
			<td><input type="text" name="precio" required="required">*</td>
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