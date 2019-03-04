<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image"  src="<c:url value="/resources/images/guitar5.jpg" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Example headline.</h1>
                    <p>Pokaze ci sie jako pierwszy </p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src=<c:url value="/resources/images/guitar6_1.jpg" /> alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Another example headline.</h1>
                    <p>Bartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep Muzyczny.</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image" src=<c:url value="/resources/images/guitar7.jpg" /> alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>One more for good measure.</h1>
                    <p>CBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep Muzyczny</p>
                    <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div><!-- /.carousel -->


<!-- Marketing messaging and featurettes
================================================== -->
<!-- Wrap the rest of the page in another container to center all the content. -->

<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>DBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep Muzyczny.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Bartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep Muzycznyh.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-4">
            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
            <h2>Heading</h2>
            <p>Bartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep MuzycznyBartek Kasza Sklep Muzyczny.</p>
            <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->

    <!-- FOOTER -->
    <%@include file="/WEB-INF/views/template/footer.jsp" %>



