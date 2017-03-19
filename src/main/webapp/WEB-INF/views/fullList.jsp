<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>
<h1>
Welcome to our List of Gnomes!!
</h1>
<h2>Lets see if we get round up all the gnomes!</h2>
<br>
<c:forEach items="${fullGnomes}" var="gnome">
<br>
<c:out value="${gnome}">
<br>
</c:out>
</c:forEach>
<br>
<br>
<p>
Click here to return home:
<form action="home.do">
<button type="submit">Home</button>
</form>
</p>

</body>
</html>
