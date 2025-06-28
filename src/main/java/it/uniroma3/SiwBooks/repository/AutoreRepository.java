package it.uniroma3.SiwBooks.repository;

import org.springframework.data.repository.CrudRepository;

import it.uniroma3.SiwBooks.model.Autore;

//classe per le operazioni della persistenza (CRUD: CREATE, READ, UPDATE, DELETE)
public interface AutoreRepository extends CrudRepository<Autore, Long> {

  
}