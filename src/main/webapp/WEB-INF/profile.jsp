<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <div class="col-sm-6 col-lg-4 mr-5">
                <div class="minimalist-card card float-left text-center" style="width: 20rem;">
                    <img class="card-img-top mx-auto d-block" src="/img/iconprofile.png" alt="Card image cap">
                    <div class="card-body p-5">
                        <h5 class="card-title">${sessionScope.user.username}</h5>
                        <p class="card-text text-justify">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div><!-- end of cardbody -->
                </div>
            </div>
            <div class="col">
            <ul class="profile-buttons">
                <li><button id="profileEdition" class="btn btn-lg" type="submit"><a href="/editprofile?=${user.id}">Edit your profile</a></button></li>
                <li><button id="createAd" class="btn btn-lg" type="submit"><a href="/ads/create"> Create an Ad</a></button></li>
            </ul>
            </div>
        </div>
    </div>
</body>
</html>
