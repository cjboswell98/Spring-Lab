package co.grandcircus.springlab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SpringController {

	@RequestMapping("/")
	public String homepage() {
		return "index";
	}

	// http://localhost:8080/aP
	@RequestMapping("/aP")
	public String anchovy(Model model) {
		String anchovy = " Anchovy Lover's";
		double price = 15.0;
		model.addAttribute("anchovy", anchovy);
		model.addAttribute("price", price);
		return "anchovy";
	}

	// http://localhost:8080/pP
	@RequestMapping("/pP")
	public String paleo(Model model) {
		String paleo = " Paleo Pizza";
		int price = 20;
		model.addAttribute("paleo", paleo);
		model.addAttribute("price", price);
		return "paleo";
	}

	// http://localhost:8080/dP
	@RequestMapping("/dP")
	public String dessert(Model model) {
		String dessert = " Dessert Pizza";
		double price = 12.0;
		model.addAttribute("dessert", dessert);
		model.addAttribute("price", price);
		return "dessert";
	}

	// Each "form" requires 2 controllers
	// One controller to display the form
	@RequestMapping("/build-form")
	public String showBuild() {
		return "build";

	}

	// Another to handle the form submission...and display the results
	@RequestMapping("/build-form-submit") // URL path matches form action
	public String submitBuild(@RequestParam String size, @RequestParam int toppings, @RequestParam boolean gluten,
			@RequestParam String special, Model model) {
		double price = 0;
		if (size.equals("Small")) {
			price = (7 + (0.5 * toppings));

		} else if (size.equals("Medium")) {
			price = (10 + (1 * toppings));

		} else if (size.equals("Large")) {
			price = (12 + (1.25 * toppings));
		}

		double fPrice = price;
		if (gluten == true) {
			fPrice += 2;
		}

		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("gluten", gluten);
		model.addAttribute("special", special);
		model.addAttribute("price", fPrice);
		return "build-results";
	}

	// Each "form" requires 2 controllers
	// One controller to display the form
	@RequestMapping("/review-form")
	public String showForm() {
		return "form";

	}

	// Another to handle the form submission...and display the results
	@RequestMapping("/review-form-submit") // URL path matches form action
	public String submitForm(@RequestParam String name, @RequestParam String comment, @RequestParam int rate,
			Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rate", rate);
		return "form-results";
	}

}
