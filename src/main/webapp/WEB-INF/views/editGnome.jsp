<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>


What species would you like to edit?
<form action="editChoice.do" method="POST">
<select name="type">
<option value="House Gnome">House Gnomes</option>
<option value="Farm Gnome">Farm Gnomes</option>
<option value="Dune Gnome">Dune Gnomes</option>
<option value="Forest Gnome">Forest Gnomes</option>
</select><br>
<button type="submit">Go</button>
</form>
</body>
</html>
