<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Edytuj produkt</h1>
            <p class="lead">Wypelnij informacje o produkcie aby edytowac</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">
        <form:hidden path="productId" value="${product.productId}"/>
        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>

        </div>

        <div class="form-group">
            <label class="control-label" for="productImage">Upload image</label>
            <form:input id="productImage" path="productImage" type="file" class="form:input-large"/>
        </div>


        <div class="form-group">
            <label for="category">Category</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="instrument"/>Instrument</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="album"/>Album</label>
            <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="akcesoria"/>Akcesoria</label>

        </div>


        <div class="form-group">
            <label for="description">Description</label>
            <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>

        </div>

        <div class="form-group">
            <label for="price">Price</label>
            <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}"/>

        </div>

        <div class="form-group">
            <label for="condition">Condition</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="new"/>Nowy</label>
            <label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="used"/>Uzywany</label>

        </div>

        <div class="form-group">
            <label for="status">Status</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active"/>Aktywny</label>
            <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive"/>Nieaktywny</label>

        </div>



        <div class="form-group">
            <label for="unitInStock">Sztuk na stanie</label>
            <form:input path="unitInStock" id="unitInStock" class="form-Control"  value="${product.unitInStock}"/>
        </div>

        <div class="form-group">
            <label for="manufacturer">Producent</label>
            <form:input path="productManufacturer" id="manufacturer" class="form-Control"  value="${product.productManufacturer}"/>

        </div>

        <br><br>
        <input type="submit" value="Zatwierdz" class="btn btn-default">
        <a href="<c:url value="/admin/productInventory"/> " class="btn btn-default">Anuluj</a>


        </form:form>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
