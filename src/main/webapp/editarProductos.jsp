<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.productos.negocio.*"%>
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
 	<h1>Editar Producto</h1>
<h4>Bienvenido
<%
out.println(usuario);
 }
%>
</h4>
	<%
		String str_cod = request.getParameter("editarcod");
		int cod = Integer.parseInt(str_cod);
		String des = request.getParameter("editardesc");
		String str_pre = request.getParameter("editarprec");
		float pre = Float.parseFloat(str_pre);
		String str_cant = request.getParameter("editarcant");
		int can = Integer.parseInt(str_cant);
		Producto mp = new Producto();
		boolean actualizado = mp.ModificarProducto(mp);
		if(actualizado == true){
			response.sendRedirect("modificarProducto.jsp");
		}else{
			out.print("Algo salio mal");
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