<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 31.01.2016
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <title>Logowanie</title>
</head>
<body>
    <section>
        <div class="jumbotron">
            <a href="<c:url value="/j_spring_security_logout"/>" class="btn btn-danger btn-sm pull-right">Wyloguj sie</a>
            <div class="container">
                <h1>Produkty</h1>
                <p>Dodaj produky</p>
            </div>
        </div>
    </section>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <h3 class="panel-title">Zaloguj sie</h3>
                </div>
                <div class="panel-body">
                    <c:if test="${!empty error}">
                        <div class="alert alert-danger">
                            <spring:message code="AbstractUserDetailsAutenticationProvider.badCredentials"></spring:message>
                            <br/>
                        </div>
                    </c:if>
                    <form action="<c:url value="/j_spring_security_check"></c:url>" method="post">
                        <fieldset>
                            <div class="form-group">
                                <input class="form-control" placeholder="Nazwa uzytkownika" name='j_username' type="text">
                            </div>
                            <div class="form-group">
                                <input class="form-control" placeholder="Haslo" name='j_password' type="password" value="">
                            </div>
                            <input class="btn btn-lg btn-success btn-block" type="submit" value="Zaloguj sie">
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
