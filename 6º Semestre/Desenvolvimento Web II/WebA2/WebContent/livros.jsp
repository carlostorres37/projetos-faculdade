<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.suam.web2.bean.Livro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
	<title>Insert title here</title>
	
	<link rel="stylesheet" type="text/css" href="css/bootstrap/bootstrap.min.css">
	
	<script type="text/javascript" src="js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap/bootstrap.min.js"></script>
</head>
<body>
	<%@ include file="./header.jsp" %>
	<% List<Livro> livros = (List<Livro>) request.getAttribute("livros"); %>
	
	<div class="container">
		<% if(request.getParameter("success") != null) { %>
			<div class="alert alert-success" role="alert"> 
				<strong>Ação realizada com sucesso!</strong> 
			</div>
		<% } %>
	
		<div class="row">
			<div class="col-md-10">
				<h1 style="margin-top: 0">LIVROS</h1>
			</div>
			<div class="col-md-2">
				<a href="livro.jsp" class="btn btn-primary pull-right">Adicionar Livro</a>
			</div>
		</div>
		
		<table class="table table-hover">
			<thead>
				<th>Código</th>
				<th>Imagem</th>
				<th>Titulo</th>
				<th>Preco</th>
				<th>Ano</th>
				<th>Paginas</th>
				<th>Status</th>
				<th>Ações</th>
			</thead>
			<tbody>
				<c:forEach var="livro" items="${livros}">
					<tr>
						<td>${ livro.getCodigo() }</td>
						<td><img src="${ livro.getImagem() }" class="img-rounded" style="max-width: 100px"></td>
						<td>${ livro.getTitulo() }</td>
						<td>R$ ${ String.format("%.2f", livro.getPreco()) }</td>
						<td>${ livro.getAno() }</td>
						<td>${ livro.getPaginas() }</td>
						<td>
							<c:if test="${ livro.getStatus() == 'A'.charAt(0) }">
						        <span class="label label-success">Ativo</span>
						    </c:if>
						    <c:if test="${ livro.getStatus() == 'I'.charAt(0) }">
						        <span class="label label-danger">Inativo</span>
						    </c:if>
					    </td>
					    <td>
					    	<form method="delete" action="LivroController">
					    		<input type="hidden" name="codigo" value="${ livro.getCodigo() }"/>
					    		<input type="hidden" name="action" value="remove" />
					    		<button type="submit" class="btn btn-danger">
					    			<i class="glyphicon glyphicon-trash"></i>
					    		</button>
					    	</form>
					    </td>
				    </tr>
				</c:forEach>
			</tbody>
			</table>
	</div>
</body>
</html>