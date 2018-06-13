<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        body {
            background-color: dimgray;
        }
        .card {
            margin-left: 80px;
        }
        .row {
            margin-bottom: 50px;
            margin-top: 50px;
        }

    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="fluid-container">
    <div class="row" style="height: 100px">
    <h1 class="text-center m-5">Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <div class="row">
        <%--<div class="ml-5 col-lg-2 col-sm-6 d-flex">--%>
            <div class="col-sm-6 col-lg-2 mr-5">
                <div class="card float-left text-center" style="width: 20rem;">
                    <img class="card-img-top mx-auto d-block" src="/img/iconprofile.png" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    </div><!-- end of cardbody -->
                </div>
            </div>
            <div class=" col-md-10 col-lg-2 float-right mt-5">
                <form action="/editprofile" method="GET" name="EDIT">
                    <button id="profileEdition" class="btn btn-info btn-lg" type="submit"><a href="/editprofile?=${user.id}">Edit your profile</a></button>
                </form>
                <form action="/ads/create" method="GET" name="EDIT">
                    <button id="createAd" class="btn btn-info btn-lg">Create an Ad</button>
                </form>
            </div>
            <%--</div>--%>
        </div>
    </div>
</body>
</html>
