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
    <h1>Here is your Add!</h1>

        <div class="col-md-6 ">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
        </div>
        <div class="col-sm-4">
            <form action="/ads/edit" method="GET" name="EDIT">
            <button id="adEdition" class="btn btn-primary btn-block"><a href="/ads/edit?id=${ad.id}">Edit</a></button>
            <button id="adDeletion" class="btn btn-primary btn-block">Delete</button>
            </form>
        </div>

</div>

</body>
</html>
