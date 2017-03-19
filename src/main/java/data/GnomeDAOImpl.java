package data;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.WebApplicationContext;

public class GnomeDAOImpl implements GnomeDAO {
		
	private static final String FILE="/WEB-INF/GnomeNames.csv";
	private List<Gnome> gnomes = new ArrayList<>();
	
	@Autowired 
	private WebApplicationContext wac;

	
		@PostConstruct
		private void init() {

			try (
					InputStream is = wac.getServletContext().getResourceAsStream(FILE);
					BufferedReader input = new BufferedReader(new InputStreamReader(is));
				) {
				String line;
				while ((line = input.readLine()) != null) {
					String[] gnomeAtt = line.split(", ");
					String name = gnomeAtt[0];
					String species = gnomeAtt[1];
					String height = gnomeAtt[2];
					String weight = gnomeAtt[3];
					String lifeExpectancy = gnomeAtt[4];
					gnomes.add(new Gnome(name, species, height, weight, lifeExpectancy));
				}
			} catch (Exception e) {
				System.err.println(e);
			}
		}
		
		public List<Gnome> getAllGnomes(){
			return gnomes;
		}
	

	public List<Gnome> getGnomeBySpecies(String gnome) {
		List<Gnome> gnomeSpecies = new ArrayList<>();
		for (Gnome gnomen : gnomes) {
			if (gnome.equalsIgnoreCase(gnomen.getSpecies())){
				gnomeSpecies.add(gnomen);
			}
		}
	return gnomeSpecies;
	}

	public List<Gnome> getGnomeByName(String gnome) {
		List<Gnome> gnomeName = new ArrayList<>();
		for (Gnome gnomen : gnomes) {
			if (gnome.equalsIgnoreCase(gnomen.getName()))
				gnomeName.add(gnomen);
		}
	return gnomeName;
		
	}

	public List<Gnome> getSpeciesByWeight(String gnome) {
		List<Gnome> gnomeWeight = new ArrayList<>();
		for (Gnome gnomen : gnomes) {
			if (gnome.equalsIgnoreCase(gnomen.getWeight()))
				gnomeWeight.add(gnomen);
		}
	return gnomeWeight;
	}

	public Gnome createNewGnome(Gnome fred) {
		gnomes.add(fred);
		int i = gnomes.size();
		return gnomes.get(i-1);
	}
	


}
