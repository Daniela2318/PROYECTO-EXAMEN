<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>ENVIO DE CORREOS</h1>

<form:form action="enviocorreo" modelAttribute="usuario" method="POST">
		
		<form:hidden path="idUsuario"/> 
		

		Correo
		<form:input path="correo" type="email" id="correo" name="correo" maxLength="40" />
		<br>
		
		<button type="submit" id="btnGuardar">ENVIAR CORREOS </button>
	</form:form>
	

</body>
</html>