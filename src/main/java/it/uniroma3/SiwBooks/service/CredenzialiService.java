package it.uniroma3.SiwBooks.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.SiwBooks.model.Credenziali;
import it.uniroma3.SiwBooks.repository.CredenzialiRepository;


@Service
public class CredenzialiService {

    @Autowired private PasswordEncoder passwordEncoder;

    @Autowired private CredenzialiRepository credenzialiRepository;

    @Transactional
    public Credenziali getCredenziali(Long id) {
        Optional<Credenziali> result = this.credenzialiRepository.findById(id);
        return result.orElse(null);
    }

    @Transactional
    public Credenziali getCredenzialiByUsername(String username) {
        Optional<Credenziali> result = this.credenzialiRepository.findByUsername(username);
        return result.orElse(null);
    }

    @Transactional
    public Credenziali saveCredenziali(Credenziali credenziali) {
        credenziali.setPassword(this.passwordEncoder.encode(credenziali.getPassword()));
        return this.credenzialiRepository.save(credenziali);
    }
    
}
