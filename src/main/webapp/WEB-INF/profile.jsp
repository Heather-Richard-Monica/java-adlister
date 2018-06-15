<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="fluid-container">
    <div class="row" style="height: 100px">
    <h1 class="text-center m-5">Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div class="col-12 profile-container row d-flex flex-wrap">
            <div class="minimalist-profile col-sm-6 col-lg-4 mr-5">
                <div class=" card float-left text-center" style="width: 20rem;">
                    <img class="card-img-top mx-auto d-block" src="/img/iconprofile.png" alt="Card image cap">
                    <div class="card-body p-5">
                        <h5 class="card-title">${sessionScope.user.username}</h5>
                        <p class="card-text text-justify">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div><!-- end of cardbody -->
                </div>
            </div>
            <div class="col-12 col-buttons">
            <ul class="profile-buttons d-table">
                <li class="float-left"><button id="profileEdition" class="btn btn-lg" type="submit"><a href="/editprofile?=${user.id}">Edit your profile</a></button></li>
                <li class="float-left"><button id="createAd" class="btn btn-lg" type="submit"><a href="/ads/create"> Create an Ad</a></button></li>
            </ul>
            </div>
        <div class="col-12" style="height: 200px"></div>
        </div>
    </div>
    <div class="row for-ads" style="margin: 0">
        <c:forEach var="ad" items="${ads}">
            <div class="mb-5 col-lg-2 col-sm-6 text-center">
                <div class="minimalist-card card text-dark bg-white m-1 m-5" style="max-width: 30rem;">
                    hello world
                    <div class="card-header border border-dark rounded"><h2 class="text-white"><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2></div>
                    <div class="card-body">
                        <h5 class=" description card-title">${ad.description}</h5>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div><!-- end of row -->
</body>
</html>
