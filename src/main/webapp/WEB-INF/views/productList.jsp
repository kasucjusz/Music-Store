<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp"%>

<script>
    $(document).ready( function () {

        var searchCondition='${searchCondition}';
        $('.table').DataTable({
            "lengthMenu":[[1,2,3,5,10,-1],[1,2,3,5,10 ,"Wszystkie"] ],
            "oSearch":{"sSearch":searchCondition}
        });
    } );
</script>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Nasze produkty!</h1>
            <p class="lead">Obczaj wszystkie wspaniale produkty z naszej oferty!</p>
        </div>

        <table class="table table-striped table-hover">
            <!--nie wiem dokladnie co to robi, ale wybiera konkretny rodzaj tabeli-->
            <thead>
            <tr class="bg-info">   <!-- to co robi to zmienia kolorek po najechaniu-->
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
                    > <span class="glyphicon glyphicon-info-sign"/></a> </td>

                </tr>
            </c:forEach>

        </table>
    </div>
        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp"%>
