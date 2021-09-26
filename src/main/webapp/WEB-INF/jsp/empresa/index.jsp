<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
<br>
<br>
<br>

<div class="container-fluid bg-1 text-center">
    <h1>${usuario.nomeCompleto}</h1>
    <p>Pagina Empresa</p>
</div>
<div class="form-group">
    <form action="/postaVaga" method="get">
        <br>
        <br>
        <button type="submit" class="btn btn-default">Criar Vaga</button>
    </form>
</div>
</div>
<hr>
<div class="container">
    <h2>Lista de Vagas</h2>

    <c:if test="${not empty vagas}">
        <table class="table table-bordered">
            <thead>
            <tr>
                <th>Id</th>
                <th>Cargo</th>
                <th>Cidade</th>
                <th>Tipo de Contrato</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="vaga" items="${vagas}" varStatus="id">
                <tr>
                    <td>${vaga.id}</td>
                    <td>${vaga.cargo}</td>
                    <td>${vaga.cidade}</td>
                    <td>${vaga.tipoContratacao}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>

    <c:if test="${empty vagas}">
        <h4>Não há vagas publicadas.</h4>
    </c:if>
</div>

</body>
</html>
