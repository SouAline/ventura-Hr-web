<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <title>Title</title>

</head>
<style>
    .bg-1 {
        background-color: #477e5d;
        color: #fff;
    }

</style>
<body>
<div class="sidenav">
    <div class="container-fluid bg-1 text-center">
        <br>
        <h1>${user.nomeCompleto}</h1>
        <br>
        <br>
    </div>
</div>
</body>
</html>