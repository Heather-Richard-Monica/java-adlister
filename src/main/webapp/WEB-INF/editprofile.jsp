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
    <h1>You can edit your Profile here!</h1>
    <form action="/editprofile" method="post">
        <input type="hidden" value="${user.id}" name="id">
        <div class="col-md-6">
            <label for="username">Edit your Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>
        <div class="col-md-6">
            <label for="email">Edit your email</label>
            <input id="email" name="email" type="text" class="form-control" value="${user.email}">
        </div>
        <div class="col-md-6">
            <label for="password">Edit your password</label>
            <input id="password" name="password" type="password" class="form-control" value="${user.password}">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>