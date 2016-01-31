<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 25.01.2016
  Time: 23:25
  To change this template use File | Settings | File Templates.
--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <title>Title</title>
</head>
<body>
    <div class="jumbotron">
        <h1>Sklep Internetowy</h1>
        <div class="row">
            <p>
                <a href="/products"><input type="button" value="lista produktow" class="btn btn-primary"></a>
            </p>
            <p>
                <a href="/customers"><input type="button" value="lista klientow" class="btn btn-primary"></a>
            </p>
            <p>
                <a href="/products/all"><input type="button" value="wsyzstkie produkty" class="btn btn-primary"></a>
            </p>

            <p>
                <a href="/products/add"><input type="button" value="Dodaj produkt" class="btn btn-primary"></a>
            </p>
        </div>
    </div>
</body>
</html>
