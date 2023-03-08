<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Clientes</h1>

	<button><a href="${pageContext.request.contextPath}/usuarios/frmAdd" >Añadir</a></button>
	<button><a href="${pageContext.request.contextPath}/envio/frmAdd" >Enviar</a></button>
	
	

	<table>
	<thead>
		<tr>
			<th>idUsuario</th>
			<th>cedula</th>
			<th>nombre1</th>
			<th>nombre2</th>
			<th>apellido1</th>
			<th>apellido2</th>
			<th>fechaNacimiento</th>
			<th>edad</th>
			<th>sexo</th>
			<th>direccion </th>
			<th>telefono</th>
			<th>correo</th>
			<th>tipo</th>
		</tr>
	</thead>
	<tbody>
		
		<c:forEach var="item" items="${usuarios}">
		<tr>
		
			<td>${item.idUsuario} </td>
			<td>${item.cedula} </td>
			<td>${item.nombre1} </td>
			<td>${item.nombre2} </td>
			<td>${item.apellido1} </td>
			<td>${item.apellido2} </td>
			<td>${item.fechaNacimiento} </td>
			<td>${item.edad} </td>
			<td>${item.sexo} </td>
			<td>${item.direccion}</td>
			<td>${item.telefono}</td>
			<td>${item.correo}</td>
			<td>${item.tipo}</td>
			<td>
				<button><a href="${pageContext.request.contextPath}/usuarios/findOne?idUsuario=${item.idUsuario}&opcion=1" >Actualizar</a></button>
				<button><a href="${pageContext.request.contextPath}/usuarios/findOne?idUsuario=${item.idUsuario}&opcion=2" >Borrar</a></button>
			
			<td> 
		</tr>
		</c:forEach>
	</tbody>
	</table>



</body>
</html>