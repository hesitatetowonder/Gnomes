<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Gnome's World!</title>
</head>
<body>


	What is the name of the Gnome you wish to edit? Here is a list to
	refresh your memory:

	<ol>
		<c:forEach var="gnome" items="${gnomes}">

			<li>${gnome}</li>

		</c:forEach>
	</ol>
	<br> Name:
	<br>
	<form action="editChoice.do" method="GET">
	<input type="text" name="name">
	<button type="submit">submit</button>
	<br>
	</form>
</body>
</html>
