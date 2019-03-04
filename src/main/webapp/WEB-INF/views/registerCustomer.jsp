<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Rejestracja</h1>

            <p class="lead">Prosze wypelnic informacje ponizej</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

        <h3>Informacje o uzytkowniku</h3>

        <div class="form-group">
            <label for="name">Imie</label>
            <form:input path="customerName" id="name" class="form-Control" required="true"/>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <form:input path="customerEmail" id="email" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="phone">Numer telefonu</label>
            <form:input path="customeerPhone" id="phone" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="username">Nazwa uzytkownika</label>
            <form:input path="username" id="username" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="password">Haslo</label>
            <form:password path="password" id="password" class="form-Control"/>
        </div>


        <h3>Adres platnosci</h3>

        <div class="form-group">
            <label for="billingStreet">Ulica</label>
            <form:input path="billingAddress.streetName" id="billingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingApartmentNumber">Numer mieszkania</label>
            <form:input path="billingAddress.apartmentNumber" id="billingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCity">Miasto</label>
            <form:input path="billingAddress.city" id="billingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingState">Wojewodztwo</label>
            <form:input path="billingAddress.state" id="billingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingCountry">Kraj</label>
            <form:input path="billingAddress.country" id="billingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="billingZip">Kod pocztowy</label>
            <form:input path="billingAddress.zipCode" id="billingZip" class="form-Control"/>
        </div>


        <h3>Adres dostawy</h3>

        <div class="form-group">
            <label for="shippingStreet">Nazwa ulicy</label>
            <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">Numer mieszkania</label>
            <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Miasto</label>
            <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Wojewodztwo</label>
            <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Kraj</label>
            <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">Kod pocztowy</label>
            <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <br><br>
        <input type="submit" value="Rejestruj" class="btn btn-default">
        <a href="<c:url value="/" />" class="btn btn-default">Wyjdz</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/alternativeFooter.jsp" %>
