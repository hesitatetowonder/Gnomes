package data;

import java.util.*;

public interface GnomeDAO {
	
	public List<Gnome> getGnomeBySpecies(String gnome);
	public List<Gnome> getGnomeByName(String gnome);
	public List<Gnome> getSpeciesByWeight(String gnome);
	public List<Gnome> getAllGnomes();
	public Gnome createNewGnome(Gnome gnome);
	
	
	
	
	

}
