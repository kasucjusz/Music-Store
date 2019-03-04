<%--
  Created by IntelliJ IDEA.
  User: barto
  Date: 30.12.2018
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: barto
  Date: 29.12.2018
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>
<jsp:useBean id="now" class="java.util.Date"/>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Zamowienie</h1>

            <p class="lead">Potwierdzenie zamowienia</p>
        </div>


        <div class="container">
            <div class="row">

                <form:form commandName="order" class="fora-horizontal">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="text-center">
                            <h1>Rachunek</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Adres dostawy</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>


                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Adres dostawy: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Adres platnosci</strong><br>
                                        ${order.cart.customer.billingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}
                                    <br>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                    <br>


                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table-hover">
                                <thead>
                                <tr>
                                    <th>Produkt</th>
                                    <th>#</th>
                                    <th class="text-center">Cena</th>
                                    <th class="text-center">Razem</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-9"><em>${cartItem.quantity}</em></td>
                                        <td class="col-md-9"><em>${cartItem.product.productPrice}</em></td>
                                        <td class="col-md-9"><em>${cartItem.totalPrice}</em></td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Razem: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><<strong>${order.cart.grandTotal}</strong></h4>


                                    </td>
                                </tr>
                                </tbody>
                            </table>

                        </div>
                        <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Cofnij</button>

                        <input type="submit" value="Potwierdzam zamowienie" class="btn btn-default"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Rezygnuje</button>
                    </div>
                </form:form>
            </div>
        </div>

        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>
