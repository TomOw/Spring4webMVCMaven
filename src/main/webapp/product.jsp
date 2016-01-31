<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 31.01.2016
  Time: 16:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <title>Produkt</title>
</head>
<body>
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Produkt</h1>
            </div>
        </div>
    </section>
    <section class="container">
        <div class="row">
            <div class="col-md-5">
                <h3>${product.name}</h3>
                <p>${product.description}</p>
                <p>
                    <strong>Kod produktu: </strong><span class="label label-warning">${product.productId}</span>
                </p>
                <p>
                    <strong>Producent</strong>: ${product.manufacturer}
                </p>
                <p>
                    <strong>Kategoria</strong>: ${product.category}
                </p>
                <p>
                    <strong>Dostepna liczba sztuk</strong>: ${product.unitsInStock}
                </p>
                <h4>${product.unitPrice} PLN</h4>
                <p>
                    <a href="#" class="btn-warning btn-lg">
                        <span class="glyphicon-shopping-cart glyphicon"></span>
                        Zamow teraz
                    </a>
                </p>
                <p>
                    <a href="<spring:url value="/products"/> " class="btn btn-default">
                        <span class="glyphicon-hand-left glyphicon"></span> Wstecz
                    </a>
                </p>
            </div>
        </div>
    </section>
</body>
</html>
