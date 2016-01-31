<%--
  Created by IntelliJ IDEA.
  User: tomaszowczarczyk
  Date: 31.01.2016
  Time: 17:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <link href="<c:url value="/resources/css/bootstrap.min.css"/> " rel="stylesheet">
    <title>Dodaj nowy produkt</title>
</head>
<body>
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Produkty</h1>
                <p>Dodaj nowy produkt</p>
            </div>
        </div>
    </section>
    <section class="container">
        <form:form modelAttribute="newProduct" cssClass="form-horizontal">
            <fieldset>

                <legend>Dodaj nowy produkt</legend>
                <div class="form-group">

                    <label class="control-label col-lg-2 col-lg-2" for="name">Nazwa Produktu</label>
                    <div class="col-lg-10">
                        <form:input id="name" path="name" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="productId">Id produktu</label>
                    <div class="col-lg-10">
                        <form:input id="productId" path="productId" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="unitPrice">Cena produktu</label>
                    <div class="col-lg-10">
                        <form:input id="unitPrice" path="unitPrice" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="manufacturer">Producent</label>
                    <div class="col-lg-10">
                        <form:input id="manufacturer" path="manufacturer" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="category">Kategoria</label>
                    <div class="col-lg-10">
                        <form:input id="category" path="category" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="unitsInStock">Liczba sztuk</label>
                    <div class="col-lg-10">
                        <form:input id="unitsInStock" path="unitsInStock" type="text" cssClass="input-lg"></form:input>
                    </div>

                    <label class="control-label col-lg-2 col-lg-2" for="unitsInOrder">Liczba sztuk w zamowieniu</label>
                    <div class="col-lg-10">
                        <form:input id="unitsInOrder" path="unitsInOrder" type="text" cssClass="input-lg"></form:input>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-2" for="description">Opis</label>
                    <div class="col-lg-10">
                        <form:textarea id="description" path="description" rows="2"></form:textarea>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-lg-offset-2 col-lg-10">
                        <input type="submit" id="btnAdd" class="btn btn-primary" value="Dodaj">
                    </div>
                </div>
            </fieldset>
        </form:form>
    </section>
</body>
</html>
