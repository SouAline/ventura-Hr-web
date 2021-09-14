<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Ventura Hr</title>

</head>
<body>


<div class="sidenav">
    <div class="jumbotron text-center">
        <h1>Bem vindo ao Ventura Hr</h1>
        <p>Faça o seu cadastro</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="col-sm-5">
            <div class="main">
                <div class="col-md-30 col-sm-30">
                    <div class="login-form">
                        <form action="/usuario/registro" method="post">
                            <div class="form-group">
                                <label>Nome Completo</label>
                                <input type="text" class="form-control" placeholder="Digite nome"
                                       name="nomeCompleto">
                            </div>

                            <div class="form-group">
                                <label>Número Telefone</label>
                                <input type="text" class="form-control" placeholder="(XX) X XXXX-XXXX)"
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
                                <input type="String" class="form-control" placeholder="Digite seu cnpj" name="cnpj">
                            </div>

                            <div class="form-group">
                                <label>Selecione:</label>
                                <div class="radio">
                                    <label><input type="radio" name="tipo" value="A">Administrador</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="tipo" value="C">Candidato</label>
                                </div>
                                <div class="radio">
                                    <label><input type="radio" name="tipo" value="E">Empresa</label>
                                </div>
                            </div>

                            <div class="form-group">
                                <label>E-mail</label>
                                <input type="email" class="form-control" placeholder="Digite seu e-mail" name="email">
                            </div>

                            <div class="form-group">
                                <label>Senha</label>
                                <input type="password" class="form-control" placeholder="Digite sua senha" name="senha">
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
