<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container-fluid bg-dark">
    <h1>Here is your Ad!</h1>
        <div class="col-md-6 ">
            <div class="card">
                <div class="minimalist-card card-header border-bottom">
                    <h2>${ad.title}</h2>
                </div>
                <div class="card-body">
                    <p class="description">${ad.description}</p>
                </div>
            </div>
        </div>
        <div class="col-sm-4">
            <form action="/ads/edit" method="GET" name="EDIT">
            <button id="adEdition" class="btn btn-block"><a href="/ads/edit?id=${ad.id}">Edit</a></button>
            <button id="adDeletion" class="btn btn-block">Delete</button>
            </form>
        </div>
</div>
</body>
</html>

