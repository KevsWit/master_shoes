<%@ page import="java.util.Calendar" %>
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
	    	<h2>Respuesta</h2><br>
	    </div>
    </header>
    <nav style="background-color: #FFD100;">
    	<a href="index.jsp">Home</a>
       	<a href="catalogo.jsp">Ver Productos</a>
       	<a href="login.jsp">Ingresa al sitio web</a>
       	<a href="contacto.jsp">Contactos</a>
  	</nav>
  	<div style="color: #D6D6D6; padding: 10px; font-size: 20px;">
  	<%
  	out.print("Su nombre es "+request.getParameter("txtNombre")+"</br>");
  	%>
  	<%
  	String fecha=request.getParameter("fecha");
  	String str_year=fecha.substring(0, 4);
  	String str_month=fecha.substring(5,7);
  	int year=Integer.parseInt(str_year);
  	int month=Integer.parseInt(str_month);
  	Calendar now = Calendar.getInstance();
  	int nyear = now.get(Calendar.YEAR);
  	int nmonth = now.get(Calendar.MONTH) + 1;
  	int edad=nyear-year;
  	if (nmonth<month)
  		edad--;
  	%>
  	Tu edad es <%out.print(edad+"</br>");%>
  	<%
  	String cedula=request.getParameter("txtCedula");
  	if (cedula.length() == 10){
  		out.print("Con c�dula "+request.getParameter("txtCedula")+"</br>");
	  	String substr_cedula=cedula.substring(0, 2);
	  	int num_provincia=0;
	  	try{
	  		num_provincia=Integer.parseInt(substr_cedula);
	  	}catch(NumberFormatException nfe){
	  		out.print("No es un n�mero");
	  	}
	  	if(num_provincia == 1)
	  		out.print("C�dula obtenida en Azuay"+"</br>");
	  	else if (num_provincia == 2)
	  		out.print("C�dula obtenida en Bol�var"+"</br>");
	  	else if (num_provincia == 3)
	  		out.print("C�dula obtenida en Ca�ar"+"</br>");
	  	else if (num_provincia == 4)
	  		out.print("C�dula obtenida en Carchi"+"</br>");
	  	else if (num_provincia == 5)
	  		out.print("C�dula obtenida en Cotopaxi"+"</br>");
	  	else if (num_provincia == 6)
	  		out.print("C�dula obtenida en Chimborazo"+"</br>");
	  	else if (num_provincia == 7)
	  		out.print("C�dula obtenida en El Oro"+"</br>");
	  	else if (num_provincia == 8)
	  		out.print("C�dula obtenida en Esmeraldas"+"</br>");
	  	else if (num_provincia == 9)
	  		out.print("C�dula obtenida en Guayas"+"</br>");
	  	else if (num_provincia == 10)
	  		out.print("C�dula obtenida en Imbabura"+"</br>");
	  	else if (num_provincia == 11)
	  		out.print("C�dula obtenida en Loja"+"</br>");
	  	else if (num_provincia == 12)
	  		out.print("C�dula obtenida en Los R�os"+"</br>");
	  	else if (num_provincia == 13)
	  		out.print("C�dula obtenida en Manab�"+"</br>");
	  	else if (num_provincia == 14)
	  		out.print("C�dula obtenida en Morona Santiago"+"</br>");
	  	else if (num_provincia == 15)
	  		out.print("C�dula obtenida en Napo"+"</br>");
	  	else if (num_provincia == 16)
	  		out.print("C�dula obtenida en Pastaza"+"</br>");
	  	else if (num_provincia == 17)
	  		out.print("C�dula obtenida en Pichincha"+"</br>");
	  	else if (num_provincia == 18)
	  		out.print("C�dula obtenida en Tungurahua"+"</br>");
	  	else if (num_provincia == 19)
	  		out.print("C�dula obtenida en Zamora Chinchipe"+"</br>");
	  	else if (num_provincia == 20)
	  		out.print("C�dula obtenida en Gal�pagos"+"</br>");
	  	else if (num_provincia == 21)
	  		out.print("C�dula obtenida en Sucumb�os"+"</br>");
	  	else if (num_provincia == 22)
	  		out.print("C�dula obtenida en Orellana"+"</br>");
	  	else if (num_provincia == 23)
	  		out.print("C�dula obtenida en Santo Domingo de los Ts�chilas"+"</br>");
	  	else if (num_provincia == 24)
	  		out.print("C�dula obtenida en Santa Elena"+"</br>");
	  	else if (num_provincia == 30)
	  		out.print("C�dula obtenida en el exterior"+"</br>");
	  	else
	  		out.print("Valor inadmisible"+"</br>");
  	}
  	%>
  	<%
  	out.print("Su estado civil es "+request.getParameter("cmbECivil")+"</br>");
  	out.print("Su residencia es "+request.getParameter("rdResidencia")+"</br>");
  	out.print("El archivo seleccionado para foto de perfil es "+request.getParameter("fileFoto")+"</br>");
  	out.print("El a�o y mes de nacimiento son: "+request.getParameter("fecha")+"</br>");
  	%>
  	<% String color=request.getParameter("colorFavorito");%>
  	Su color favorito es:
  	<p style="color: <%= color %>; font-size: 20px;">
  	color favorito
  	</p>
  	<%
  	out.print("El archivo seleccionado para su CV es "+request.getParameter("filePDF")+"</br>");
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