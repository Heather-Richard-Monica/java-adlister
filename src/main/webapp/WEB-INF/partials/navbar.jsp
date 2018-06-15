
<%@ page import="com.codeup.adlister.models.User" %>

<%
    User user=null;
    if(session != null){
        user = (User) session.getAttribute("user");
    }
    if(user != null){
        request.setAttribute("navbar", "<li><a href=\"/ads/search\">Search</a></li>\n" +
                "<li><a href=\"/logout\">Logout</a></li>\n" +
                "<li><a href=\"/ads/create\">Create</a></li>\n" +
                "<li><a href=\"/profile\">Profile</a></li>");
    }  else {
        request.setAttribute("navbar", "<li><a href=\"/ads/search\">Search</a></li>\n" +
                "<li><a href=\"/register\">Register</a></li>\n" +
                "<li><a href=\"/login\">Login</a></li>");
    }
%>


<nav class="navbar navbar-default navbar-expand">
    <div class="container-fluid navigation">

        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">See Ads</a>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li class="nav-item"><a class="nav-link" href="/login">Login</a></li>
            <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
            <li class="nav-item"><a class="nav-link" href="/ads/create">Create an Ad</a></li>
            <li><a href="ads/search">Search Ads</a></li>


        </ul>
    </div><!-- /.container-fluid -->
</nav>
