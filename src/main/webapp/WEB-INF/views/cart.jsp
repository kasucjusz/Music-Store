<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Koszyk</h1>

                    <p>Wszystkie wybrane przez Ciebie produkty</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller = "cartCtrl" ng-init="initCartId('${cartId}')">


                <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(productId)">
                            <span class="glyphicon glyphicon-remove"></span>Usun z koszyka</a></td>

                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{callGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>



                <a href="<spring:url value="/product/productList" />" class="btn btn-default">Kontynuuj zakupy</a>

                <div>
                    <a class="btn btn-danger pull-right"  ng-click="clearCart()"><span
                            class="glyphicon glyphicon-remove-sign pull-right"></span>Wyczysc koszyk</a>
                    <a href="<spring:url value="/order/${cartId}"/> " class="btn btn-default">Przejdz do platnosci</a>
                </div>
            </div>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>