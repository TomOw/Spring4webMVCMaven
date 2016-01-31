
<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 27.01.2016
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <title>Products</title>
</head>
<body>
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Produkty</h1>
                <p>Wszystkie produkty</p>
            </div>
        </div>
    </section>
    <section class="container">
        <div class="row">
            <c:forEach items="${products}" var="product">
                <div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
                    <div class="thumbnail">
                        <div class="caption">
                            <h3>${product.name}</h3>
                            <p>${product.description}</p>
                            <p>${product.unitPrice} PLN</p>
                            <p>Liczba sztuk: ${product.unitsInStock}</p>
                            <p>
                                <a href="<spring:url value="/products/product?id=${product.productId}"/>" class="btn btn-primary">
                                    <span class="glyphicon-info-sign glyphicon"></span> Szczegoly
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</body>
</html>
