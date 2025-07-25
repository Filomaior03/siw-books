package it.uniroma3.SiwBooks.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.SiwBooks.model.Autore;
import it.uniroma3.SiwBooks.model.Recensione;
import it.uniroma3.SiwBooks.model.Utente;
import it.uniroma3.SiwBooks.service.AutoreService;
import it.uniroma3.SiwBooks.service.LibroService;
import it.uniroma3.SiwBooks.service.RecensioneService;
import jakarta.servlet.http.HttpServletRequest;



@Controller
public class Pagine {

	@Autowired private LibroService libroService;
	@Autowired private AutoreService autoreService;
	@Autowired private RecensioneService recensioneService;


	@GetMapping({"/", "/index"})
	public String getVetrina(Model model) {
		model.addAttribute("libri", libroService.getAllLibri());
		return "index";
	}

	@GetMapping("/libro/{idLibro}")
	public String getLibro(Model model, @PathVariable("idLibro") Long idLibro) {
		model.addAttribute("libro", libroService.getLibroById(idLibro));
		model.addAttribute("recensioneNuova", new Recensione());
		boolean esisteRecensione = libroService.getLibroById(idLibro).getRecensioni().stream().anyMatch(r -> r.getUtente().equals(model.getAttribute("utente")));
		model.addAttribute("esisteRecensione", esisteRecensione);
		return "libro";
	}

	@GetMapping("/autori")
	public String getAutori(Model model) {
		model.addAttribute("autori", autoreService.getAllAutori());
		return "autori";
	}

	@GetMapping("/autore/{idAutore}")
	public String getAutore(Model model, @PathVariable("idAutore") Long idAutore) {
		Autore autore = autoreService.getAutoreById(idAutore);
		model.addAttribute("autore", autore);
		model.addAttribute("libri", autore.getLibri());
		return "autore";
	}

	@GetMapping("/recensioni")
	public String getRecensioni(Model model) {
		model.addAttribute("recensioni", recensioneService.getAllRecensioni());
		return "recensioni";
	}

	@PostMapping("/aggiuntaRecensione")
	public String postAggiuntaNuovaRecensione(Model model, @ModelAttribute("recensioneNuova") Recensione recensione, HttpServletRequest request, @RequestParam("idLibro") Long idLibro) {
		recensione.setLibro(libroService.getLibroById(idLibro));
		recensione.setUtente((Utente)model.getAttribute("utente"));
		this.recensioneService.saveNewRecensione(recensione);
		String referer = request.getHeader("Referer");
		return "redirect:" + referer; // Reindirizza alla pagina precedente	
	}

}