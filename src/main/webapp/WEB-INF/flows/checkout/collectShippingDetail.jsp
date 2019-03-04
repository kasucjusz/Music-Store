<%--
  Created by IntelliJ IDEA.
  User: barto
  Date: 29.12.2018
  Time: 21:04
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Klient</h1>

            <p class="lead">Prosze wypelnic informacje dotyczace adresu dostawy</p>
        </div>

        <form:form commandName="order" class="fora-horizontal">

        <h3>Adres dostawy</h3>

        <div class="form-group">
            <label for="shippingStreet">Ulica</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Numer mieszkania</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber"
                        class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Miasto</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Wojewodztwo</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Kraj</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Kod pocztowy</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>


        <input type="hidden" name="_flowExecutionKey">

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Cofnij</button>

        <input type="submit" value="Dalej" class="btn btn-default" name="_eventId_shippingDetailCollected"/>
        <button class="btn btn-default" name="_eventId_cancel">Rezygnuje</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>
