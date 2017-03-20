<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Welcome to Gnome's World!</title>
</head>
<body>
	<h1>Welcome to the Wonderful World of Gnomes</h1>

	<p>Let's make a Gnome!</p>
	<form action="makeIt.do" method="GET">
		<fieldset>
			<p>
			Most important field.....Your Gnomes name:]<br>
			<input type="text" name="name">
			<br>
		
				<label>Select Species</label><select name="species">
					<option value="House Gnome">House</option>
					<option value="Dune Gnome">Dune</option>
					<option value="Forest Gnome">Forest</option>
					<option value="Farm Gnome">Farm</option>
				</select> <label>Select Height</label> <select name="height">
					<option value="2 feet">2 feet</option>
					<option value="2 1/2 feet">2 1/2 feet</option>
					<option value="3 feet">3 feet</option>
					<option value="4 feet">4 feet</option>
				</select> <label>Select Weight</label> <select name="weight">
					<option value="20 lbs">20 lbs</option>
					<option value="30 lbs">30 lbsfeet</option>
					<option value="45 lbs">45 lbs</option>
					<option value="60 lbs">60 lbs</option>
				</select> <label>Select Age</label> <select name="age">
					<option value="400 years">400 years</option>
					<option value="450 years">450 years</option>
					<option value="500 years">500 years</option>
					<option value="700 years">700 years</option>
				</select>
			</p>
			<button type=submit>Make IT!!!</button>
		</fieldset>
	</form>
	<br>
	You will be returned to the home page after addition, Revisit the species habitat to see you gnome.