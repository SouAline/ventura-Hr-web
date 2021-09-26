<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <title>Ventura Hr</title>
</head>
<style>
    .bg-1 {
        background-color: #477e5d; /* Green */
        color: #fff;
    }
</style>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>
<br>
<br>

<div class="sidenav">
    <div class="container-fluid bg-1 text-center">
        <br>
        <h1>Faca seu login</h1>
        <br>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="main">
                    <div class="col-md-30 col-sm-30">
                        <div class="login-form">
                            <form action="/login" method="post">
                                <div class="form-group">
                                    <br>
                                    <label>E-mail</label>
                                    <input type="text" class="form-control" name="email" placeholder="Digite seu e-mail">
                                </div>
                                <div class="form-group">
                                    <label>Senha</label>
                                    <input type="password" class="form-control" name="senha" placeholder="Digite sua senha">
                                </div>
                                <button type="submit" class="btn btn black">Entrar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
