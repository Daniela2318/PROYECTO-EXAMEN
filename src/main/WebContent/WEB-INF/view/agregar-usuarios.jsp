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
<h1>Usuarios</h1>

<form:form action="add" modelAttribute="usuario" method="POST">
		
		<form:hidden path="idUsuario"/> 
		
		Cedula
		<form:input path="cedula" type="number" id="cedula" name="cedula" maxLength="10" />
		<br>
		Nombre1
		<form:input path="nombre1" type="text" id="nombre1" name="nombre1" maxLength="15" />
		<br>
		Nombre2
		<form:input path="nombre2" type="text" id="nombre2" name="nombre2" maxLength="15" />
		<br>
		Apellido1
		<form:input path="apellido1" type="text" id="apellido1" name="apellido1" maxLength="15" />
		<br>
		Apellido2
		<form:input path="apellido2" type="text" id="apellido2" name="apellido2" maxLength="15" />
		<br>
		Fecha de Nacimiento
		<form:input path="fechaNacimiento" type="date" id="fechaNacimiento" name="fechaNacimiento" />
		<br>
		Edad
		<form:input path="edad" type="number" id="edad" name="edad" maxLength="15" />
		<br>
		Sexo
		<form:input path="sexo" type="text" id="sexo" name="sexo" maxLength="15" />
		<br>
		Direccion
		<form:input path="direccion" type="text" id="direccion" name="direccion" maxLength="40" />
		<br>
		Telefono
		<form:input path="telefono" type="number" id="telefono" name="telefono" maxLength="20" />
		<br>
		Correo
		<form:input path="correo" type="email" id="correo" name="correo" maxLength="40" />
		<br>
		
		<button type="submit" id="btnGuardar">Guardar </button>
		<button type="button" id="btnCancelar" onClick="window.location.href='/ismac-spring-factura-web/clientes'; return false;">Cancelar </button>
	</form:form>
	

</body>
</html>