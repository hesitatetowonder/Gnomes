package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.Gnome;
import data.GnomeDAO;

@Controller
public class GnomeController {
	List<Gnome> gnomes = new ArrayList<>();

	@Autowired
	private GnomeDAO dao;

	@RequestMapping(value = "home.do")
	public String getNumbers() {

		return "home";
	}

	@RequestMapping(value = "gnomeSpecies.do", params = "type")
	public ModelAndView getGnomes(@RequestParam("type") String type) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("gnomes", dao.getGnomeBySpecies(type));
		mv.setViewName("gnomeSpecies");
		return mv;
	}

	@RequestMapping(value = "makeGnome.do")
	public ModelAndView addGnome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("makeGnome");
		return mv;
	}

	@RequestMapping(value = "makeIt.do")
	public ModelAndView makeGnome(Gnome gnome) {
		ModelAndView mv = new ModelAndView();
		mv.addObject(dao.createNewGnome(gnome));
		mv.setViewName("home");
		return mv;
	}

	@RequestMapping(value = "gnomeEdit.do")
	public ModelAndView editGnome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("editGnome");
		return mv;
	}

	@RequestMapping(value = "editChoice.do", params = "type")
	public ModelAndView editSpecies(@RequestParam("type") String type) {
		ModelAndView mv = new ModelAndView();
		gnomes = dao.getGnomeBySpecies(type);
		mv.addObject("height", gnomes.get(0).getHeight());
		mv.addObject("weight", gnomes.get(0).getWeight());
		mv.addObject("lifeExpectancy", gnomes.get(0).getLifeExpectancy());
		mv.setViewName("editing");
		return mv;
	}

	@RequestMapping(value = "showEdit.do")
	public ModelAndView showEdit(String height, String weight, String lifeExpectancy) {
		ModelAndView mv = new ModelAndView();
		for (Gnome gnome : gnomes) {
			gnome.setHeight(height);
			gnome.setWeight(weight);
			gnome.setLifeExpectancy(lifeExpectancy);
		}
		mv.addObject("gnomes", gnomes);
		mv.setViewName("editDone");

		return mv;
	}

	@RequestMapping(value = "deleteGnome.do")
	public ModelAndView deleteGnome() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("delete");
		return mv;
	}

	@RequestMapping(value = "delete.do")
	public ModelAndView deGnome(@RequestParam("species") String species) {
		ModelAndView mv = new ModelAndView();
		gnomes = dao.getAllGnomes();
		for (int i = 0; i < gnomes.size(); i++) {
			if (gnomes.get(i).getSpecies().equalsIgnoreCase(species)) {
				gnomes.remove(i);
			}
		}
		System.out.println(gnomes);
		mv.addObject("gnomes", gnomes);
		mv.setViewName("deletedone");
		return mv;
	}
}
