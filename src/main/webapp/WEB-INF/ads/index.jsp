<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <style>
        body {
            background-color: dimgray;
        }
        .card {
            opacity: .7;
            border-radius: 5%;
            -webkit-box-shadow: 7px 6px 20px 5px #0A0A0A;
            box-shadow: 7px 6px 20px 5px #0A0A0A;
            height: auto;
        }
        .wrap-ad {
            margin-bottom: 25px;
        }

    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
    <h1 class="text-center mb-5">Here are all the ads!</h1>
        <div class="row">
            <%--<div class="col-12">--%>
                <c:forEach var="ad" items="${ads}">
                    <div class="col-3 wrap-ad">
                     <div class="card text-white bg-dark m-1" style="max-width: 30rem;">
                        <div class="card-header"><h2 class="text-white"><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2></div>
                        <div class="card-body">
                            <h5 class="card-title">${ad.description}</h5>
                            <%--<p class="card-text"></p>--%>
                        </div>
                     </div>
                    </div>
                </c:forEach>
            <%--</div><!-- end of col-10 -->--%>
        </div><!-- end of row -->
        <%--<div class="col-md-6">--%>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <form action="/edit" method="GET" value="${userAds.id}">
                <button class="btn-primary">EDIT</button>
            </form>

            <form action="/delete" method="POST" value="${userAds.id}">
                <button class="btn-danger" name="DELETE" value="${userAds.id}">
                    DELETE
                </button>
            </form>
        </div>
    </c:forEach>
</div>

            <%--<p>${ad.description}</p>--%>
        <%--</div>--%>


</div><!-- end of container-fluid -->
</body>
</html>
