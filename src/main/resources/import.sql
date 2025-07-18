-- CREDENZIALI
INSERT INTO credenziali (id, username, ruolo, password) VALUES (1, 'Lorenzo', 'UTENTE', '$2a$12$HtNgYhzZ0Gy.Si8DF9dHfOvTZBAc9E7c6rsqfBE90a3Mt21LZAkhi'); -- pw: "1Password!"
INSERT INTO credenziali (id, username, ruolo, password) VALUES (2, 'Michela','UTENTE', '$2a$12$HtNgYhzZ0Gy.Si8DF9dHfOvTZBAc9E7c6rsqfBE90a3Mt21LZAkhi'); -- pw: "1Password!"
INSERT INTO credenziali (id, username, ruolo, password) VALUES (3, 'Filippo', 'ADMIN', '$2a$12$58ofR0Bw3s0SVWmKnd8jLuAZ75Zxo2pfYDG4.Akz1oO/9b7kcpRZi'); -- pw: adminPassword!

-- UTENTI
INSERT INTO utente (id, credenziali_id, nome, cognome, email) VALUES (1, 1, 'Lorenzo', 'Riccio', 'lorenzo@example.com');
INSERT INTO utente (id, credenziali_id, nome, cognome, email) VALUES (2, 2, 'Michela', 'Sicu', 'mic@example.com');
INSERT INTO utente (id, credenziali_id, nome, cognome, email) VALUES (3, 3, 'Filippo', 'Maialino', 'filor@example.com');


-- AUTORI
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (1, 'Agatha', 'Christie', 'images/autori/aga-ch.png', '1890-09-15', '1976-01-12', 'Regno Unito');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (2, 'Carlo', 'Goldoni', 'images/autori/car-go.png', '1707-02-25', '1793-02-06', 'Italia');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (3, 'George', 'Orwell', 'images/autori/geo-or.png', '1903-06-25', '1950-01-21', 'Regno Unito');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (4, 'Harper', 'Lee', 'images/autori/har-le.png', '1926-04-28', '2016-02-19', 'Stati Uniti');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (5, 'Elsa', 'Morante', 'images/autori/els-mo.png', '1912-08-18', '1985-11-25', 'Italia');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (6, 'Mark', 'Twain', 'images/autori/mar-tw.png', '1835-11-30', '1910-04-21', 'Stati Uniti');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (7, 'Italo', 'Calvino', 'images/autori/ita-ca.png', '1923-10-15', '1985-09-19', 'Italia');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (8, 'J.D.', 'Salinger', 'images/autori/jd-sal.png', '1919-01-01', '2010-01-27', 'Stati Uniti');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (9, 'R.L.', 'Stevenson', 'images/autori/rl-ste.png', '1850-11-13', '1894-12-03', 'Regno Unito');
INSERT INTO autore (id, nome, cognome, immagine, data_nascita, data_morte, nazione) VALUES (10, 'Stephen', 'King', 'images/autori/ste-ki.png', '1947-09-21', NULL, 'Stati Uniti');

-- LIBRI
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (1, 'Dieci piccoli indiani', 'Giallo', 'images/copertine/die-pi-ind.png', 1939, '"Dieci piccoli indiani" è un classico giallo di Agatha Christie. Dieci sconosciuti vengono invitati su un’isola deserta e accusati di omicidio. Uno a uno iniziano a morire, seguendo una filastrocca inquietante. Un enigma perfetto fino all’ultima pagina.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (2, 'La Locandiera', 'Commedia', 'images/copertine/locan.png', 1753, 'Opera teatrale di Carlo Goldoni. Mirandolina, astuta locandiera, conquista e respinge i suoi ospiti nobili per difendere la propria indipendenza. Una brillante commedia sul gioco della seduzione.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (3, '1984', 'Distopia', 'images/copertine/1984.png', 1949, 'Romanzo distopico di George Orwell. Winston Smith vive sotto un regime totalitario che controlla il pensiero e la verità. La sua ribellione contro il Grande Fratello mette in gioco la sua identità e libertà.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (4, 'Il Buio Oltre la Siepe', 'Narrativa', 'images/copertine/buio-ol-sie.png', 1960, 'Capolavoro di Harper Lee. Scout Finch osserva il coraggio del padre Atticus, avvocato che difende un uomo nero ingiustamente accusato di stupro. Una storia di giustizia, innocenza e crescita nel sud degli Stati Uniti.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (5, 'L’isola di Arturo', 'Romanzo', 'images/copertine/iso-art.png', 1957, 'Romanzo di Elsa Morante. Il giovane Arturo cresce a Procida, diviso tra sogni eroici, la solitudine e il rapporto ambiguo col padre. Un racconto di formazione intenso e lirico.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (6, 'Le Avventure di Tom Sawyer', 'Romanzo', 'images/copertine/avv-tom-saw.png', 1876, 'Mark Twain racconta l’infanzia ribelle di Tom Sawyer lungo il Mississippi. Tra fughe, tesori nascosti e amicizie, un classico intramontabile sull’avventura e la libertà.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (7, 'Il Sentiero dei Nidi di Ragno', 'Narrativa', 'images/copertine/sen-nid-rag.png', 1947, 'Romanzo d’esordio di Italo Calvino. Durante la Resistenza, Pin, un bambino emarginato, si unisce ai partigiani. Una storia di guerra e infanzia vista con sguardo disincantato.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (8, 'Il Giovane Holden', 'Romanzo', 'images/copertine/gio-hold.png', 1951, 'Di J.D. Salinger. Holden Caulfield, adolescente disilluso, vaga per New York dopo essere stato espulso da scuola. Una voce ironica e sincera che esplora l’alienazione giovanile.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (9, 'L’isola del Tesoro', 'Romanzo', 'images/copertine/iso-tes.png', 1883, 'Classico d’avventura di Robert Louis Stevenson. Il giovane Jim Hawkins si imbarca alla ricerca di un tesoro, tra pirati, ammutinamenti e mappe misteriose. Una storia indimenticabile di coraggio.');
INSERT INTO libro (id, titolo, genere, copertina, anno_pubblicazione, descrizione) VALUES (10, 'The Outsider', 'Giallo', 'images/copertine/outs.png', 2018, 'Thriller di Stephen King. Quando un uomo viene brutalmente ucciso, tutte le prove indicano un solo sospettato. Ma qualcosa di oscuro sfida ogni logica. Un’indagine tra orrore e mistero.');

--RECENSIONI
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (1, 'Un classico che non invecchia mai', 'Dieci piccoli indiani è un giallo perfetto, la tensione cresce pagina dopo pagina. Consigliatissimo!', 5, 1, 1);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (2, 'Divertente e ironico', 'La Locandiera è una commedia brillante, Goldoni tratteggia personaggi memorabili.', 4, 2, 2);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (3, 'Distopia inquietante', '1984 è un romanzo che fa riflettere sull’importanza della libertà e della verità.', 5, 3, 3);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (4, 'Commovente e potente', 'Il Buio Oltre la Siepe racconta una storia di giustizia e coraggio che resta nel cuore.', 5, 4, 2);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (5, 'Atmosfera unica', 'L’isola di Arturo è un viaggio emozionante tra infanzia e maturità.', 4, 5, 1);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (6, 'Avventura senza tempo', 'Le Avventure di Tom Sawyer è un classico che ho amato da bambino e riletto con piacere.', 5, 6, 2);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (7, 'Resistenza e infanzia', 'Il Sentiero dei Nidi di Ragno è un romanzo intenso e poetico.', 4, 7, 3);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (8, 'Iconico', 'Il Giovane Holden è un romanzo che parla direttamente ai giovani e ai disillusi.', 4, 8, 3);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (9, 'Pirateria e coraggio', 'L’isola del Tesoro è un classico dell’avventura che cattura subito.', 5, 9, 1);
INSERT INTO recensione (id, titolo, testo, voto, libro_id, utente_id) VALUES (10, 'Thriller avvincente', 'The Outsider mischia investigazione e orrore come solo Stephen King sa fare.', 4, 10, 2);

-- Associazione tra libri e autori
INSERT INTO libro_autori (libri_id, autori_id) VALUES (1, 1);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (2, 2);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (3, 3);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (4, 4);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (5, 5);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (6, 6);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (7, 7);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (8, 8);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (9, 9);
INSERT INTO libro_autori (libri_id, autori_id) VALUES (10, 10);

-- Aggiorna il counter degli id delle varie tabelle
SELECT setval('credenziali_seq', (SELECT MAX(id) FROM credenziali));
SELECT setval('utente_seq', (SELECT MAX(id) FROM utente));
SELECT setval('autore_seq', (SELECT MAX(id) FROM autore));
SELECT setval('libro_seq', (SELECT MAX(id) FROM libro));
SELECT setval('recensione_seq', (SELECT MAX(id) FROM recensione));