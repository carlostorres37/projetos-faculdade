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
		<% if(request.getParameter("success") != null) { %>
			<div class="alert alert-success" role="alert"> 
				<strong>Livro inserido com sucesso!</strong> 
			</div>
		<% } %>
		
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h1 style="margin-top: 0">ADICIONAR LIVRO</h1>
				<br>
				<form id="createLivro" method="post" action="LivroController">
				  <div class="input-group">
				    <label class="input-group-addon" for="titulo">Título</label>
				    <input type="text" class="form-control" required id="titulo" name="titulo" placeholder="Título do livro">
				  </div>
				  
				  <br>
				  
				  <div class="row">
					<div class="col-xs-12 col-sm-3">
						<div class="input-group">
						    <label class="input-group-addon" for="preco">Preço</label>
						    <input type="text" class="form-control" required id="preco" name="preco">
						  </div>
					</div>
					
					<div class="col-xs-12 col-sm-3">
						<div class="input-group">
						    <label class="input-group-addon" for="ano">Ano</label>
						    <input type="text" class="form-control" required id="ano" name="ano">
						  </div>
					</div>
					
					<div class="col-xs-12 col-sm-3">
						<div class="input-group">
						    <label class="input-group-addon" for="paginas">Páginas</label>
						    <input type="text" class="form-control" required id="paginas" name="paginas">
						  </div>
					</div>
					
					<div class="col-xs-12 col-sm-3">
						<div class="input-group">
						    <label class="input-group-addon" for="status">Status</label>
						    <select name="status" required class="form-control">
				                <option value="A">Ativo</option>
				                <option value="I">Inativo</option>
				            </select>
						  </div>
					</div>
				  </div>
				  
				  <br>
				  
				  <div class="input-group">
				    <label class="input-group-addon" for="imagem">Imagem</label>
				    <input type="text" class="form-control" id="imagem" name="imagem">
				  </div>
				  
				  <br>
				  
				  <button type="submit" class="btn btn-block btn-success">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>