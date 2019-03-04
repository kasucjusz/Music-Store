<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/alternativeHeader.jsp" %>



<header class="masthead text-center text-dark d-flex">
    <div class="container my-auto">
        <div class="row">
            <div class="col-lg-10 mx-auto">
                <h1 class="text-uppercase">
                    <strong>Witaj w moim sklepie z plytami</strong>
                </h1>
                <hr>
            </div>
            <div class="col-lg-8 mx-auto">
                <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about">Dowiedz sie wiecej!</a>
            </div>
        </div>
    </div>
</header>

<section class="bg-primary" id="about">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto text-center">
                <h2 class="section-heading text-white">Wszystkie akcesoria zwiazane z muzyka jakich potrzebujesz!</h2>
                <hr class="light my-4">
                <p class="text-faded mb-4">W naszym asortymencie znajdziesz plyty, naszywki, plakaty, glany. Dzieki nam merch twojego ulubionego zespolu w zasiegu reki!</p>
                <a class="btn btn-light btn-xl js-scroll-trigger" href="<c:url value="/register"/> ">Zarejestruj sie juz teraz</a>
            </div>
        </div>
    </div>
</section>


<section class="p-0" id="portfolio">
    <div class="container-fluid p-0">
        <div class="row no-gutters popup-gallery">
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" >
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_1.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" >
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_2.jpg"/> "alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box" >
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_3.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box">
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_4.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box">
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_5.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-4 col-sm-6">
                <a class="portfolio-box">
                    <img class="img-fluid" src="<c:url value="/resources/images/thumbnails_6.jpg"/> " alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                Category
                            </div>
                            <div class="project-name">
                                Project Name
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </div>
</section>

<section class="bg-white text-dark">
    <div class="container text-center">
        <h2 class="mb-4">Masz juz konto? Zaloguj sie!</h2>
        <a class="btn btn-light btn-xl sr-button" href="<c:url value="/login"/> ">Loguj</a>
    </div>
</section>


<!-- Bootstrap core JavaScript -->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.bundle.min.js"/>"></script>

<!-- Plugin JavaScript -->
<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/js/scrollreveal.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>

<!-- Custom scripts for this template -->
<script src="<c:url value="/resources/js/creative.min.js"/>"></script>

</body>

</html>
