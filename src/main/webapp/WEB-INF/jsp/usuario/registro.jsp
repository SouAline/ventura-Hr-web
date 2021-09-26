<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        background-color: #477e5d;
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
        <h1>Cadastro de usuario</h1>
        <br>
        <br>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="main">
                    <div class="col-md-30 col-sm-30">
                        <div class="login-form">
                            <form action="/registro" method="post">
                                <div class="form-group">
                                    <br>
                                    <label>Nome Completo</label>
                                    <input type="text" value="Joaquina Da Silva" class="form-control"
                                           placeholder="Digite nome"
                                           name="nomeCompleto">
                                </div>

                                <div class="form-group">
                                    <label>Número Telefone</label>
                                    <input type="text" class="form-control" placeholder="(XX) X XXXX-XXXX"
                                           name="numeroTelefone">
                                </div>

                                <div class="form-group">
                                    <label>Razão Social</label>
                                    <input type="text" class="form-control" placeholder="Digite a razão social"
                                           name="razaoSocial">
                                </div>

                                <div class="form-group">
                                    <label>Cpf</label>
                                    <input type="String" class="form-control" placeholder="Digite seu cpf" name="cpf">
                                </div>

                                <div class="form-group">
                                    <label>Cnpj</label>
                                    <input type="String" class="form-control" placeholder="XX. XXX. XXX/0001-XX"
                                           name="cnpj">
                                </div>

                                <div class="form-group">
                                    <label>Selecione:</label>
                                    <label class="radio-inline">
                                        <input type="radio" value="A" name="tipo">Administrador
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="C" name="tipo">Candidato
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" value="E" name="tipo">Empresa
                                    </label>
                                </div>

                                <div class="form-group">
                                    <label>E-mail</label>
                                    <input type="email" value="joaquina@joaquina.com" class="form-control"
                                           placeholder="Digite seu e-mail" name="email">
                                </div>

                                <div class="form-group">
                                    <label>Senha</label>
                                    <input type="password" value="123" class="form-control"
                                           placeholder="Digite sua senha" name="senha">
                                </div>

                                <button type="submit" class="btn btn-default">Cadastrar</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
