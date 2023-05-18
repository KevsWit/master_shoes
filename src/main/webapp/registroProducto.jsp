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
 	<h1>Ingresar un producto</h1>
<h4>Bienvenido
<%
out.println(usuario);
 }
%>
<%
	Producto prod=new Producto();
	String str_id = request.getParameter("id");
	int id = Integer.parseInt(str_id);
	String str_categoria=request.getParameter("cmbCategoria");
	int cat=Integer.parseInt(str_categoria);
	String nombre=request.getParameter("nombre");
	String str_cant=request.getParameter("cantidad");
	int cantidad=Integer.parseInt(str_cant);
	String str_precio=request.getParameter("precio");
	double precio=Double.parseDouble(str_precio);
	out.print(prod.ingresarProducto(id, cat, nombre, cantidad, precio, ""));
	
%>
</h4>
	
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