<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Create a new Ad</h1>
        <h2>${message}</h2>
        <form action="/ads/create" method="post">
            <div class="form-group">
                <label for="title">Title</label>
                <input id="title" name="title" class="form-control" type="text">
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <div class="form-group">
                <label for="price">Price</label>
                <textarea id="price" name="price" class="form-control" type="text"></textarea>
            </div>
            <div class="multiselect">
                <div class="selectBox" onclick="showCheckboxes()">
                    <select>
                        <option>Select category</option>
                    </select>
                    <div class="overSelect"></div>
                </div>
                <div id="checkboxes">
                    <label for="one">
                        <input type="checkbox" id="one" />Helped Wanted</label>
                    <label for="two">
                        <input type="checkbox" id="two" />Services</label>
                    <label for="three">
                        <input type="checkbox" id="three" />Automotive</label>
                    <label for="four">
                    <input type="checkbox" id="four" />Free</label>
                    <label for="five">
                        <input type="checkbox" id="five" />Electronics</label>
                    <label for="six">
                        <input type="checkbox" id="six" />Household Items</label>
                    <label for="seven">
                        <input type="checkbox" id="seven" />Furniture</label>
                    <label for="eight">
                        <input type="checkbox" id="eight" />Apparel</label>
                    <label for="nine">
                        <input type="checkbox" id="nine" />Children</label>
                    <label for="ten">
                        <input type="checkbox" id="ten" />Men</label>
                    <label for="eleven">
                        <input type="checkbox" id="eleven" />Women</label>
                    <label for="twelve">
                        <input type="checkbox" id="twelve" />Miscellaneous</label>

                </div>
            </div>


          

            <input type="submit" class="submit btn btn-block">

        </form>
    </div>
</body>
<script>
    var expanded = false;

    function showCheckboxes() {
        var checkboxes = document.getElementById("checkboxes");
        if (!expanded) {
            checkboxes.style.display = "block";
            expanded = true;
        } else {
            checkboxes.style.display = "none";
            expanded = false;
        }
    }

</script>
</html>
