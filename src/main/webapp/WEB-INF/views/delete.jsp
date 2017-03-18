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
	<br> Now to our bloody business. Which Gnome were you wanting to
	delete?
	<form action="delete.do" method="GET">
		<fieldset>
			<p>
				<label>Select Species</label> <select name = species>
					<option value="House Gnome">House</option>
					<option value="Dune Gnome">Dune</option>
					<option value="Forest Gnome">Forest</option>
					<option value="Farm Gnome">Farm</option>
				</select>
			</p>
			<button type=submit>KILL!!!!!!uh.....delete</button>
		</fieldset>
	</form>
</body>
</html>
