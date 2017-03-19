<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>
<img src="images/dead_gnome.jpg"  width="500" height="400" >
<br>
<audio autoplay>
  <source src="images/Taps.mp3" type="audio/mp3">
</audio>
<p>Well, I guess you showed that gnome, the only gnomes left are :
<c:forEach items="${gnomes}" var="gnome">
<br>
<c:out value="${gnome}">
<br>
</c:out>
</c:forEach>
<br>
<br>
Now that that horrible business has been completed would you like to 
return home? click below
<form action="home.do" method="GET">
<button type="submit">Home</button>
</form>

</body>
</html>
