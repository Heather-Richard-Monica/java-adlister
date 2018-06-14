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
        <h1>You can change your password here!</h1>
        <form action="/password" method="post">
            <input type="hidden" value="${user.id}" name="id">
            <div class="col-md-6">
                <label for="oldpassword">Put your current password</label>
                <input id="oldpassword" name="oldpassword" class="form-control" type="password">
            </div>
            <div class="col-md-6 mb-5">
                <label for="newPassword">Put your new password</label>
                <input id="newPassword" name="newPassword" type="password" class="form-control">
            </div>
            <div class="col-md-6">
                <label for="confirm_newpassword">Confirm your password</label>
                <input id="confirm_newpassword" name="confirm_newpassword" type="password" class="form-control">
            </div>
            <div class="col-md-6 submit">
                <input type="submit" class="btn btn-block mt-5 form-control">
            </div>
        </form>
    </div><!-- end of row -->


</div>
</body>
</html>