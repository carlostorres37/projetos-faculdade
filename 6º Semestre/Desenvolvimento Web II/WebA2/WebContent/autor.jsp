<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	
	<div class="container">
		<form id="createLivro" method="post" action="AutorController">
		  <div class="input-group">
		    <label class="input-group-addon" for="titulo">Nome</label>
		    <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome do autor">
		  </div>
		  <button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>