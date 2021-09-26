<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Ventura HR</title>
</head>
<style>
    .bg-1 {
        background-color: #477e5d;
        color: #fff;
    }

</style>
<body>

<c:import url="/WEB-INF/jsp/menu.jsp"/>
<div class="sidenav">
    <div class="container-fluid bg-1 text-center">
        <br>
        <h1>Cadastro de vagas</h1>
        <br>
        <br>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-5">
                <div class="main">
                    <div class="col-md-30 col-sm-30">
                        <div class="login-form">
                            <form action="/descricao" method="post">
                                <br>
                                <div class="form-group">
                                    <input type="hidden" name="usuarioId" value= ${usuario.id}>
                                </div>
                                <div>
                                    <label>Cargo</label>
                                    <input type="text" class="form-control" name="cargo" value= ${vaga.cargo}>
                                </div>
                                <div>
                                    <label>Cidade</label>
                                    <input type="text" class="form-control" name="cidade" value= ${vaga.cidade}>
                                </div>
                                <div>
                                    <label>Tipo de Contratacao</label>
                                    <input type="text" class="form-control" name="tipoContratacao" value= ${vaga.tipoContratacao}>
                                </div>
                                <button type="submit" class="btn btn-default">Continuar</button>
                            </form>

                            <c:if test="${not empty vaga}">

                                <form action="/criterios" method="post">

                                    <div class="form-group">
                                        <label>Descrição</label>
                                        <input type="text" class="form-control" name="descricao" value= ${criterio.descricao}>
                                    </div>
                                    <div class="form-group">
                                        <label>Perfil</label>
                                        <input type="number" min="1" max="5" class="form-control" name="perfil" value= ${criterio.perfil}>
                                    </div>

                                    <div class="form-group">
                                        <label>Peso</label>
                                        <input type="number" min="1" max="5" class="form-control" name="peso" value= ${criterio.peso}>
                                    </div>

                                    <button type="submit" class="btn btn-default">Adicionar</button>
                                </form>

                                <form action="/publicar" method="post">
                                    <button type="submit" class="btn btn-default">Publicar</button>
                                </form>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>