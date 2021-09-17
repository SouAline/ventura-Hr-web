<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>VenturaHR</title>
</head>
<style>
    .bg-1 {
        background-color: #477e5d; /* Green */
        color: #fff;
    }
    .bg-2 {
        background-color: #fff; /* White */
        color: #555555;
    }
    .bg-3 {
        background-color: #fff; /* White */
        color: #555555;
    }
</style>
</head>
<body>
<c:import url="/WEB-INF/jsp/menu.jsp"/>
<br>
<br>


<div class="container-fluid bg-1 text-center">
    <br>
    <h1>VENTURA HR</h1>
    <br>
    <br>

    <h3>Candidatos & Vagas </h3>
    <br>
    <br>
</div>

<div class="container-fluid bg-2 text-center">
    <h3>PARA CANDIDATOS</h3>
    <p>Para quem está desempregado, a maior expectativa é encontrar recolocação no mercado de trabalho. Aqui voce encontra as melhores vagas para se candidatar.</p>
</div>

<div class="container-fluid bg-3 text-center">
    <h3>PARA EMPRESAS</h3>
    <p>Cadastre as vagas da sua empresa e localize os candidatos para preencher as vagas de acordo com os critérios que você precisa. VocÊ pode cadastrar quans vagas quiser</p>
</div>

</body>
</html>
