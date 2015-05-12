<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Secure</title>
</head>
<body>
	<h1>Secure page</h1>

	<c:forEach var="address" items="${addressList}">
		${address.address} ${address.status}
		<br>
	</c:forEach>
</body>
</html>
