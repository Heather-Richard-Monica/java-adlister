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

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>


    </div>

    <div>
        <c:forEach var="userAds" items="${userAds}">
            <div class="col-md-6">
                <h2>${userAds.title}</h2>
                <p>${userAds.description}</p>
                <div><button class="btn-primary">EDIT</button>
                <button class="btn-danger">DELETE</button></div>
            </div>
        </c:forEach>
    </div>

</body>
</html>
