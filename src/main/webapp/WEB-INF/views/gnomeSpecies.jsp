<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Gnome's World!</title>
</head>
<body>

	<ol>
		<c:forEach var="gnome" items="${gnomes}">

			<li>${gnome}</li>

		</c:forEach>
	</ol>
	
<form>Thanks for visiting</form>
<form action="home.do" method="GET">
<button type = submit> Click here to return Home</button>
</form>



</body>
</html>