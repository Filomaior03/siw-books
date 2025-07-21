package it.uniroma3.SiwBooks.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import it.uniroma3.SiwBooks.model.*;
import it.uniroma3.SiwBooks.service.*;

@ControllerAdvice
public class GlobalController {	//Controller che rende disponibili le informazioni dell'utente a tutte le view restituite dal Controller

	@Autowired
	private CredenzialiService credenzialiService;

	@ModelAttribute("userDetails")
	public UserDetails getUser() {

		UserDetails user = null;

		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	//recupero l'utente autenticato

		//salvo le informazioni dell'utente, se è autenticato
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			user = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		}

		return user;
	}

	@ModelAttribute("ruolo")
	public String getRuolo() {

		String ruolo = "";
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();	//recupero il ruolo dell'utente

		//salvo il ruolo dell'utente
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			Credenziali credenziali = this.credenzialiService.getCredenzialiByUsername(userDetails.getUsername());
			ruolo = credenziali.getRuolo();
		}
		return ruolo.toLowerCase();
	}

	@ModelAttribute("utente")
	public Utente getUtente() {

		Utente utente = null;
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();

		//recupero tutte le informazioni dell'utente, comprese le sue credenziali
		if (!(authentication instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			Credenziali credenziali = this.credenzialiService.getCredenzialiByUsername(userDetails.getUsername());
			utente = credenziali.getUtente();
		}

		return utente;
	}
}