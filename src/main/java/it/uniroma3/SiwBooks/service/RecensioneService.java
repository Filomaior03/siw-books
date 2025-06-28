package it.uniroma3.SiwBooks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.SiwBooks.model.Recensione;
import it.uniroma3.SiwBooks.repository.RecensioneRepository;


//classe per definire le operazioni CRUD tramite metodi java: descrive i servizi offerti
@Service
public class RecensioneService {
	
	@Autowired private RecensioneRepository recensioneRepository;	//istanza costruita e inizializzata dal framework


    public Recensione getRecensioneById(Long id) {
        return this.recensioneRepository.findById(id).get();
    }

	public Iterable<Recensione> getAllRecensioni(){
		return this.recensioneRepository.findAll();
	}
	
	public Recensione saveNewRecensione(Recensione recensione){
		return this.recensioneRepository.save(recensione);
	}

	public void deleteRecensione(Long id){
		this.recensioneRepository.deleteById(id);
	}


}