package it.uniroma3.SiwBooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import it.uniroma3.SiwBooks.model.*;
import it.uniroma3.SiwBooks.service.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.Valid;

@Controller
public class Autenticazione {

    @Autowired
    private CredenzialiService credenzialiService;

    @Autowired
    private UtenteService utenteService;

    @GetMapping("/login")
    public String login(Model model, HttpServletRequest request) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication != null && authentication.isAuthenticated()
                && !(authentication instanceof AnonymousAuthenticationToken)) {
            String referer = request.getHeader("Referer");
            return "redirect:" + referer; // Reindirizza alla pagina precedente

        }
        return "login"; // Mostra la pagina di login se non autenticato
    }

    @GetMapping("/registrazione")
    public String getRegistrazione(Model model, HttpServletRequest request) {
        model.addAttribute("utenteNuovo", new Utente());
        model.addAttribute("credenziali", new Credenziali());
        return "registrazione";
    }

    @PostMapping("/registrazione")
    public String registrazione(@Valid @ModelAttribute("utenteNuovo") Utente utente,
            BindingResult userBindingResult,
            @Valid @ModelAttribute("credenziali") Credenziali credenziali,
            BindingResult credentialsBindingResult,
            Model model) {
        if (userBindingResult.hasErrors() || credentialsBindingResult.hasErrors()) {
            return "registrazione"; // Ritorna al modulo con errori
        }

        if (credenzialiService.getCredenzialiByUsername(credenziali.getUsername()) != null) {
            model.addAttribute("errore", "Username già esistente."); // Aggiungi un messaggio di errore
            return "registrazione"; // Ritorna al modulo con messaggio di errore
        }

        credenziali.setRuolo("UTENTE");
        credenzialiService.saveCredenziali(credenziali);
        credenziali.setUtente(utente);
        utente.setCredenziali(credenziali);
        utenteService.saveNewUtente(utente);
        return "redirect:/login";
    }

}
