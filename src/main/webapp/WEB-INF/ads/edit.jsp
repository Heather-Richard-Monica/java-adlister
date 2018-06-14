
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <title>Edit your Ad</title>
</head>
<body>
<h1>Make changes to your Ad</h1>

<form action="/ads/edit" method="post">
    <div class="form-group">
        <label for="title">Title</label>
        <input id="title" name="title" class="form-control" type="text">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea id="description" name="description" class="form-control" type="text"></textarea>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
</form>

</body>
</html>
=======
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>You can edit your Ad here!</h1>
    <form action="/ads/edit" method="post">
        <div class="col-md-6">
            <label for="title">Edit your Title</label>
            <input id="title" name="title" class="form-control" type="text" value="${ad.title}">
        </div>
        <div class="col-md-6">
            <input type="hidden" value="${ad.id}" name="id">
            <label for="description">Edit your description</label>
                <input id="description" name="description" type="text" class="form-control" value="${ad.description}">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>

