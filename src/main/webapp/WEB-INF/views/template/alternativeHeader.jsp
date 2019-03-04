<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: barto
  Date: 04.11.2018
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Creative - Start Bootstrap Theme</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="<c:url value="/resources/css/all.min.css"/>" rel="stylesheet">

    <!-- Plugin CSS -->
    <link href="<c:url value="/resources/magnific-popup.css"/>" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="<c:url value="/resources/css/creative.min.css"/>" rel="stylesheet">

    <link href="<c:url value="/resources/css/main.css"/>" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">



    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>



    <!-- angular JS -->

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>


</head>

<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="<c:url value="/" />">Bartek Kasza Sklep Muzyczny</a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="<c:url value="/" />">Strona glowna</a></li>
                        <li><a href="<c:url value="/product/productList"/> ">Produkty</a></li>
                        <li><a href="#contact">Kontakt</a></li>

                    </ul>

                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name!=null}">
                            <li><a>Witaj!: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Zaloguj sie</a></li>
                            <c:if test="${pageContext.request.userPrincipal.name!='admin'}">
                                <li><a href="<c:url value="/customer/cart" />"> Koszyk</a></li>
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name=='admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>
                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name==null}">


                            <li><a href="<c:url value="/login"/> ">Zaloguj sie</a> </li>
                            <li><a href="<c:url value="/register"/> ">Rejestracja</a></li>
                        </c:if>
                    </ul>

                </div>
            </div>
        </nav>

    </div>
</div>

