<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp"%>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Lista produktow</h1>
            <p class="lead">Lista produktow dla admina!</p>
        </div>

        <table class="table table-striped table-hover">
            <!--nie wiem dokladnie co to robi, ale wybiera konkretny rodzaj tabeli-->
            <thead>
            <tr class="bg-success">   <!-- to co robi to zmienia kolorek po najechaniu-->
                <th>Zdjecie</th>  <!--th czyli table header-->
                <th>Nazwa produktu</th>
                <th>Kategoria</th>
                <th>Stan</th>
                <th>Cena</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png"/> " alt="image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}"/>"
                    > <span class="glyphicon glyphicon-info-sign"/></a>

                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/>"
                        > <span class="glyphicon glyphicon-remove-circle"/></a>
                        <a href="<spring:url value="/admin/product/editProduct/${product.productId}"/>"
                        > <span class="glyphicon glyphicon-pencil"/></a>

                    </td>

                </tr>
            </c:forEach>

        </table>

        <a href="<spring:url value="/admin/product/addProduct"/>"> <button type="button" class="btn btn-success">Dodaj produkt</button> </a>

        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp"%>
