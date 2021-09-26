<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <title>Ventura HR</title>
</head>
<br>
<br>

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
        <h1>${user.nomeCompleto}</h1>
        <br>
        <br>
    </div>
</div>
<div class="container">
    <h2>BUSQUE POR VAGAS</h2>
    <input class="form-control" id="myInput" type="text" placeholder="Digite Front-end ou Back-end">
    <br>




</body>
</html>