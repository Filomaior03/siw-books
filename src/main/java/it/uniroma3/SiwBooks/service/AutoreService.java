package it.uniroma3.SiwBooks.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import it.uniroma3.SiwBooks.model.Autore;
import it.uniroma3.SiwBooks.repository.AutoreRepository;

//classe per definire le operazioni CRUD tramite metodi java: descrive i servizi offerti
@Service
public class AutoreService {
	
	@Autowired private AutoreRepository autoreRepository;	//istanza costruita e inizializzata dal framework


    public Autore getAutoreById(Long id) {
        return this.autoreRepository.findById(id).get();
    }

	public Iterable<Autore> getAllAutori(){
		return this.autoreRepository.findAll();
	}
	
	public Autore saveNewAutore(Autore autore){
		return this.autoreRepository.save(autore);
	}

	public void deleteAutore(Long id){
		this.autoreRepository.deleteById(id);
	}


}