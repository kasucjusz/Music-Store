<%--
  Created by IntelliJ IDEA.
  User: barto
  Date: 30.12.2018
  Time: 13:02
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <p class="text-success ">Dziekujemy za zakupy w naszym sklepie</p>
                </div>
            </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-default">Powrot do sklepu</a>
            </p>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>