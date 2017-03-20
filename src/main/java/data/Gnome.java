package data;

public class Gnome {
	
private String name, species, height, weight, age;

public Gnome(){

}

public Gnome(String name, String species, String height, String weight, String age) {
	super();
	this.name = name;
	this.species = species;
	this.height = height;
	this.weight = weight;
	this.age = age;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getSpecies() {
	return species;
}

public void setSpecies(String species) {
	this.species = species;
}

public String getHeight() {
	return height;
}

public void setHeight(String height) {
	this.height = height;
}

public String getWeight() {
	return weight;
}

public void setWeight(String weight) {
	this.weight = weight;
}

public String age() {
	return age;
}

public void setLifeExpectancy(String age) {
	this.age = age;
}

@Override
public String toString() {
	return "Name: " + name + "	Species: " + species + "	Height: " + height + "	Weight: " + weight 
			+ "	age: " + age;
}




}
