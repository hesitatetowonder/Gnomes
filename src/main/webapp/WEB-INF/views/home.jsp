<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Welcome to Gnome's World!</title>
</head>
<body>
<h1>
Welcome to the Wonderful World of Gnomes
</h1>
<h2>We have four gnome subcolonies you can interact with</h2>
<center>
<img src="images/Welcome_Gnome.jpg">
</center>
<br>
A list of all our gnomes:
<form action="list.do" method="GET">
<button type="submit">See List</button>
</form>
<br>

Which species would you like to interact with?
<form action="gnomeSpecies.do" method="GET">
<button type=submit name="type" value="House Gnome"><img src="images/House_Gnomes.jpeg" width="50" height="40" >Got to House Gnomes</button>
<button type=submit name="type" value="Farm Gnome"><img src="images/Farm_Gnome2.jpeg" width="50" height="40" >Got to Farm Gnomes</button>
<button type=submit name="type" value="Dune Gnome"><img src="images/Dune_Gnome.jpeg" width="50" height="40" >Got to Dune Gnomes</button>
<button type=submit name="type" value="Forest Gnome"><img src="images/Forest_Gnomes.jpeg" width="50" height="40" >Got to Forest Gnomes</button>
</form>

<br>

Would you like to edit a Gnome?
<form action="gnomeEdit.do" method="GET">
<button type=submit value="EditGnome">Go Edit</button>
</form>

<br>

Would you like to make a Gnome of your own?
<form action="makeGnome.do" method="GET">
<button type=submit>Make your Gnome!</button>
</form>
<br>
Or if you feel a gnome has wronged you in some way you can delete them here:
<form action="deleteGnome.do" method="GET">
<button type="submit">DESTROY!</button>
</form>
</body>
</html>
