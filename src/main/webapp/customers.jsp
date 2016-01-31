<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 27.01.2016
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <spring:url value="/resources/css/boot2.css" var="mainCss" />

    <link href="${mainCss}" rel="stylesheet" />
    <title>Customers</title>
</head>
<body>
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Klienci</h1>
                <p>Wszyscy klienci</p>
            </div>
        </div>
    </section>
    <section class="container">
            <ul class="list-group">
                <c:forEach items="${customers}" var="customer">
                    <li class="list-group-item">
                        <h3>${customer.name}</h3>
                        <p>ID: ${customer.customerId}</p>
                        <p>Adres: ${customer.address}</p>
                        <p>Ilosc zamowien: ${customer.noOfOrdersMade}</p>
                    </li>
                </c:forEach>
            </ul>
    </section>
</body>
</html>
