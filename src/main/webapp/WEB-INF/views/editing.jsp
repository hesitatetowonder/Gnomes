<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>
The traits are below with the current value in each field, enter new value in place of the current value to change.
<br>
<form action="showEdit.do" Method="GET">
What would you like the values to be?
<br>
Name:
<input type = "text" name="name" value="${name}">
<br>
Height:
<input type="text" name="height" value="${height}">
<br>
Weight:
<input type="text" name="weight" value="${weight}">
<br>
Life Expectancy:
<input type="text" name="lifeExpectancy" value="${lifeExpectancy}">
<br>
<button type="submit">Done</button>
</form>
