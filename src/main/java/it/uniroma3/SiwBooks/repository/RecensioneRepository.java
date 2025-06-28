package it.uniroma3.SiwBooks.repository;

import org.springframework.data.repository.CrudRepository;

import it.uniroma3.SiwBooks.model.Recensione;

//classe per le operazioni della persistenza (CRUD: CREATE, READ, UPDATE, DELETE)
public interface RecensioneRepository extends CrudRepository<Recensione, Long> {

}