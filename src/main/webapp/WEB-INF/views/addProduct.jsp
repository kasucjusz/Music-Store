<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Dodaj produkt</h1>
            <p class="lead">Wypelnij informacje o produkcie</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">

        <div class="form-group">
            <label for="name">Nazwa</label>
            <form:errors path="productName" cssStyle="color: #ff0000;"/>
            <form:input path="productName" id="name" class="form-Control"/>

        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Dolacz zdjecie</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>


        <div class="form-group">
            <label for="category">Kategoria</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="album"/>Plyta</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="akcesoria"/>Akcesoria</label>

        </div>


        <div class="form-group">
            <label for="description">Opis</label>
            <form:textarea path="productDescription" id="description" class="form-Control"/>

        </div>

        <div class="form-group">
            <label for="price">Cena</label>
            <form:errors path="productPrice" cssStyle="color: #ff0000;"/>

            <form:input path="productPrice" id="price" class="form-Control"/>

        </div>

        <div class="form-group">
            <label for="condition">Stan</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="nowy"/>Nowy</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="uzywany"/>Uzywant</label>

        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="aktywny"/>Aktywny</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="nieaktywny"/>Nieaktywny</label>

        </div>



        <div class="form-group">
            <label for="unitInStock">Sztuk w magazynie</label>
            <form:errors path="unitInStock" cssStyle="color: #ff0000;"/>

            <form:input path="unitInStock" id="unitInStock" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Producent</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"/>

        </div>

        <br><br>
        <input type="submit" value="Dodaj" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Cancel</a>


        </form:form>

            <%@include file="/WEB-INF/views/template/footer.jsp" %>
