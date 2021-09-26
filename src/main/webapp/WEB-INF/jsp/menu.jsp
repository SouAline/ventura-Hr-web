<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand">Ventura HR</a>
    </div>
    <ul class="nav navbar-nav">
        <li class="active"><a href="/">HOME</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <c:if test="${empty usuario}">
         <li><a href="/usuario"><span class="glyphicon glyphicon-user"></span>CADASTRAR</a></li>
         <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span>ENTRAR</a></li>
      </c:if>
      <c:if test="${not empty usuario}">
         <li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span> Logout - ${usuario.nomeCompleto}</a></li>
      </c:if>
    </ul>
  </div>
</nav>
</body>
</html>
