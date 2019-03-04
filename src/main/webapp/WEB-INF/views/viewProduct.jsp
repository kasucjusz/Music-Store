<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Szczegoly produktu</h1>
            <p class="lead">Sczegolowe informacje dotyczace produktu!</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width:100%"/>


                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p><STRONG>Opis</STRONG> ${product.productDescription}</p>
                    <p>${product.productManufacturer}</p>
                    <p>${product.productCategory}</p>
                    <p>
                        <strong>${product.productPrice} PLN</strong>
                    </p>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/product/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/products"/>
                    </c:if>


                <p ng-controller="cartCtrl">
                    <a href="<c:url value="${url}"/>" class="btn btn-default">Cofnij</a>
                    <a href="#" class="btn btn-warning btn-large"
                       ng-click="addToCart('${product.productId}')"><span
                            class="glyphicon glyphicon-shopping-cart"></span>Zamow teraz</a>
                    <a href="<spring:url value="/customer/cart"/> " class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>Sprawdz koszyk</a>
                </p>
                </div>
            </div>
        </div>

            <script src="<c:url value="/resources/js/controller.js"/> "></script>
            <%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>
