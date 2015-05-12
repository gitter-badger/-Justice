<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="sec"
		   uri="http://www.springframework.org/security/tags"%>
<%@ page session="false"%>
<html>
<head>
	<%@include file="base_header.jsp" %>
	<title>Home</title>
	<link rel="stylesheet" href="bootstrap.min.css"/>
	<script src="jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="bootstrap.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="/resources/css/home.css"/>
	<link href='http://fonts.googleapis.com/css?family=Voltaire' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Roboto:300,100' rel='stylesheet' type='text/css' />
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
			<a class="navbar-brand" href="/">Justice</a>
		</div>
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="#">Console</a></li>
				<li><a href="#about">About</a></li>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>

<div id="main">
	<div class="container">
		<div class="row">
			<div class="full">
				<h1 class="section-header text-center">Welcome to <span itemprop="name">Justice management</span></h1>
			</div>
		</div>

		<div class="row mt50">
			<div class="one-third">
				<a href="/manager/">
					<div class="work-block blue rounded work-block-button">
						<hr>
						<p>Manager</p>
					</div>
				</a>
			</div>
			<div class="one-third">
				<a href="/employee/">
					<div class="work-block green rounded work-block-button">
						<hr>
						<p>Employee</p>
					</div>
				</a>
			</div>
			<div class="one-third">
				<a href="/admin/">
					<div class="work-block gray rounded work-block-button">
						<hr>
						<p>Admin</p>
					</div>
				</a>
			</div>
		</div>

	</div>
</div>
</body>
</html>
