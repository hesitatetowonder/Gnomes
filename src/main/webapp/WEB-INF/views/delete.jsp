<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Gnome's World!</title>
</head>
<body>
	<h1>Welcome to the Wonderful World of Gnomes</h1>
	A little mood music
	<br>
	<audio controls>
		<source src="images/mood.mp3" type="audio/mp3">
	</audio>
	<br> Now to our bloody business. Which Gnome hath wronged you and
	deserves death? In case death is trivial to you and you have forgotten
	the name here is a list:
	<br>
	<ol>
		<c:forEach var="gnome" items="${gnomes}">

			<li>${gnome}</li>

		</c:forEach>
	</ol>
	<br> Name:
	<br>
	<form action="delete.do" method="GET">
		<input type="text" name="name">
		<button type="submit">Kill!</button>
	</form>
</body>
</html>
