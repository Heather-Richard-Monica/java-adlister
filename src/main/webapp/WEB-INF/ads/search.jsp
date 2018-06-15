<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: heatherarellano
  Date: 6/11/18
  Time: 12:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Search" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">

    <h1 class="text-center">Your search</h1>
    <form action="/ads/search" method="POST" class="center-text center-block">
        <label for="search">Title: <input type="text" name="searchInput" id="search"></label><br>
        <label for="searchCat"> Category: <select id="searchCat" name="searchCat">
            <option value="Help Wanted">Help Wanted</option>
            <option value="Services">Services</option>
            <option value="Auto">Auto</option>
            <option value="Free">Free</option>
            <option value="Electronics">Electronics</option>
            <option value="Household Items">Household Items</option>
            <option value="Furniture">Furniture</option>
            <option value="Apparel">Apparel</option>
            <option value="Children">Children</option>
            <option value="Men">Men</option>
            <option value="Women">Women</option>
            <option value="Miscellaneous">Miscellaneous</option>
        </select></label><br>
        <button>Submit</button>
    </form>




            <div class="container">
                <hr>
                <c:forEach var="ad" items="${search}">
                    <div class="card col-sm-6 col-md-4 col-lg-3" style="height: 24rem;">

                        <div class="card-body" style="border: 1px solid black">
                            <h5 class="card-title">${ad.title}</h5>
                            <p class="card-text">${ad.description}</p>
                            <p class="card-text">${ad.price}</p>
                            <a href="/ads/single?ad-id=${ad.id}"/a>
                        </div>
                    </div>
                </c:forEach>
            </div>
</div>

</body>
</html>
