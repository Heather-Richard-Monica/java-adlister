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
    <div class="container">
    <h1 class="text-center">Here are all the ads!</h1>
        <div class="row">
                <c:forEach var="ad" items="${ads}">
                <div class="mb-5 col-lg-2 col-sm-6 text-center">
                     <div class="minimalist-card card text-dark bg-white m-1" style="max-width: 30rem;">
                        <div class="card-header border border-dark rounded"><h2 class="text-white"><a href="/ads/show?id=${ad.id}">${ad.title}</a></h2></div>
                        <div class="card-body">
                            <h5 class=" description card-title">${ad.description}</h5>
                        </div>
                     </div>
                    </div>
                </c:forEach>
        </div><!-- end of row -->
</div><!-- end of container-fluid -->
</body>
</html>
