<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>VenturaHR</title>

</head>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>

<div class="jumbotron text-center">
    <h1>SEJA BEM VINDO</h1>
    <p>Cadastre-se ou faça login!</p></p>
    <form method="get">
</div>

    <div class="main">
        <div class="col-md-6 col-sm-12">
            <div class="login-form">
                <form>
                    <div class="form-group">
                        <label>E-mail</label>
                        <input type="text" class="form-control" placeholder="Digite seu e-mail">
                    </div>
                    <div class="form-group">
                        <label>Senha</label>
                        <input type="password" class="form-control" placeholder="Digite sua senha">
                    </div>
                    <button type="submit" class="btn btn black">Entrar</button>
                    <button type="submit" class="btn btn-secondary">Cadastrar</button>
                    <div class="form-group"><br>

                    </div>
            </div>
        </div>
    </body>
</html>
