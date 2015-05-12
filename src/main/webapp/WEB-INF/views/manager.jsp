<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee Menu</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/ManagerStyle.css"/>
    <script src="/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script src="/resources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/resources/js/jquery-1.11.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="/resources/js/manager.js"></script>
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class=" navbar-header pull-right">
            <p class="navbar-text">
                <sec:authorize access="isAuthenticated()">
                    <a class="navbar-link" href="<c:url value="/logout"/>">Logout</a>
                </sec:authorize>
            </p>
        </div>
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/managerempl/">Manager Menu</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Console</a></li>
                <li><a href="#about">About</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</div>
<div class="content">
    <h1>Manager</h1>
    <div>
        <input id="search" type="text" class="form-control" placeholder="Filter"/>
    </div>
    <div class="button-hide">
        <button class="hideBtnProduct btn btn-primary">Manager Inform</button>
        <button class="hideBtnDish btn btn-primary">Account Satistic</button>
    </div>
    <div class="first-content">
        <div class="product-table">
            <table class="table table-hover allProduct paginated">
                <tr>
                    <th> UserName </th>
                    <th> Time Enter</th>
                    <th> Time Out </th>
                </tr>
                <c:forEach var="sensor" items="${sensorList}">
                    <tr class="product" id="product${sensor.id}">
                        <td class = "id-product">${sensor.login}</td>
                        <td> ${sensor.timeIn}</td>
                        <td>${sensor.timeOut}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </div>
    <div class="second-content">
        <div class="dish-table">
            <table class="table table-hover allDishes paginated">
                <tr>
                    <th> ID </th>
                    <th> Name</th>
                    <th> Bill </th>
                    <th> Rate per hour</th>
                </tr>
                <tbody>
                <c:forEach var="employee" items="${emploeeList}">
                    <tr class="dish">
                        <td>${employee.id}</td>
                        <td> ${employee.fullName}</td>
                        <td>${employee.bill}</td>
                        <td>${employee.rate}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        </div>
</div>

<div class="footer navbar-fixed-bottom">
    <span>&#169;2015</span>
    <a href="https://github.com/zccmj/-Justice.git">Git Open Software</a>
    ,All Rights Reserved. Terms of Use and Privacy
</div>
</body>
</html>
