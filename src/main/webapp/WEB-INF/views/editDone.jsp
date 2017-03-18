<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>
Your edit completed:
Edit made = "${gnomes}"
<br>
Click here to return home:
<form action="home.do">
<button type="submit">Home</button>
</form>
</body>
</html>
