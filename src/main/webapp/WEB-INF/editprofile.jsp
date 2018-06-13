<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <div class="row">
    <h1>You can edit your Profile here!</h1>
    <form action="/editprofile" method="post">
        <input type="hidden" value="${user.id}" name="id">
        <div class="col-md-6">
            <label for="username">Edit your Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <div class="col-md-6 mb-5">
            <label for="email">Edit your email</label>
            <input id="email" name="email" type="text" class="form-control" value="${user.email}">
        </div>
        <div class="col-md-6 submit">
            <input type="submit" class="btn btn-primary btn-block mt-5 form-control">
        </div>
    </form>
    </div><!-- end of row -->
    <div class="row">
    <h2>Change your password</h2>
        <a href="/password" class="btn btn-primary btn-block">Change your password</a>
    </div>

</div>
</body>
</html>