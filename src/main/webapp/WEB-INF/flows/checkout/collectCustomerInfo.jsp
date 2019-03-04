<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Klient</h1>

            <p class="lead">Prosze wypelnic informacje ponizej</p>
        </div>

        <form:form commandName="order" class="fora-horizontal" >

        <h3>Informacje o uzytkowniku</h3>

        <div class="form-group">
            <label for="name">Imie</label>
            <form:input path="cart.customer.customerName" id="name" class="form-Control" required = "true"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Numer telefonu</label>
            <form:input path="cart.customer.customeerPhone" id="phone" class="form-Control"/>
        </div>


        <h3>Adres platnosci</h3>

        <div class="form-group">
            <label for="billingStreet">Ulica</label>
            <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Numer mieszkania</label>
            <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Miasto</label>
            <form:input path="cart.customer.billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Wojewodztwo</label>
            <form:input path="cart.customer.billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Kraj</label>
            <form:input path="cart.customer.billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Kod pocztowy</label>
            <form:input path="cart.customer.billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>


       <input type="hidden" name="_flowExecutionKey">

        <br><br>
        <input type="submit" value="Dalej" class="btn btn-default" name="_eventId_customerInfoCollected"/>
        <button class="btn btn-default" name="_eventId_cancel">Rezygnuje</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>
