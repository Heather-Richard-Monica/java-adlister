<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

%>

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
                <h2>${userAds.id}</h2>
                <h2>${userAds.title}</h2>
                <p>${userAds.description}</p>
                    <div>
                        <form action="/ads/edit" method="POST" value="${userAds.id}" name="EDIT">
                         <button class="btn-primary">EDIT</button>
                        </form>

                        <form action="/delete" method="POST" value="${userAds.id}">
                            <button class="btn-danger" name="DELETE" value="${userAds.id}">
                                DELETE
                             </button>
                        </form>
                    </div>
                </div>
        </c:forEach>



</body>
</html>
