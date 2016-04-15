# ProgettoSiw-Ecommerce
Portale di Ecommerce - Progetto didattico

Caso d'uso UC1: consulta listino
Attore primario: utente non registrato
Scenario principale di successo: 
L'utente consulta il catalogo dei prodotti
L'utente sceglie un prodotto e ne richiede i dettagli 
Il sistema mostra i dettagli del prodotto scelto
L'utente ripete i passi precedenti un numero indefinito di volte


Caso d'uso UC2: effettua ordine
Attore primario: cliente (utente registrato)
Scenario principale di successo: 
Il cliente crea un ordine
Il cliente consulta il catalogo dei prodotti
Il cliente sceglie un prodotto e aggiunge codice e quantità del prodotto scelto all'ordine
Il sistema imposta il prezzo unitario del prodotto scelto al prezzo corrente si listino del prodotto
Il sistema registra la riga ordine
Il cliente ripete i due passi precedenti finché necessario
Il cliente "chiude" l'ordine
Il sistema registra l'ordine
Precondizioni: il cliente è identificato e autenticato


Caso d'uso UC3: consulta i propri ordini
Attore primario: cliente
Scenario principale:
Il cliente consulta l'elenco dei propri ordini
Il sistema mostra al cliente l'elenco dei suoi ordini
Il cliente chiede il dettaglio di un ordine
Il sistema mostra il dettaglio dell'ordine
Il cliente ripete i due passi precedenti finché necessario
Precondizioni: il cliente è identificato e autenticato


Caso d'uso UC4: inserimento prodotti nel catalogo
Attore primario: amministrazione
Scenario principale:
L'amministratore inserisce un nuovo prodotto nel catalogo specificandone i dettagli
Il sistema registra il prodotto
I punti precedenti vengono ripetuti fino a che necessario
Non è possibile registrare più di un prodotto con lo stesso codice (univoco)
Precondizioni: l'amministratore è identificato e autenticato


Caso d'uso UC5: recupera indirizzo cliente
Attore primario: amministrazione
Scenario principale:
L’amministratore fornisce l'id di un ordine 
Il sistema mostra all’amministratore i dati del cliente che ha effettuato l’ordine
Precondizioni: l’amministratore è identificato e autenticato


Caso d'uso UC6: evasione ordine
Attore primario: amministrazione
Scenario principale:
Il sistema presenta all'amministratore gli ordini chiusi
L'amministratore sceglie un ordine non evaso
Il sistema evade l'ordine: aggiorna l'ordine inserendo la data di spedizione
L'amministratore aggiorna manualmente la quantità disponibile in magazzino
Precondizioni:
l'amministratore è identificato e autenticato
Eccezioni:
alcuni prodotti potrebbero non essere presenti in magazzino nella quantità specificata dall'ordine. In questo caso l'ordine rimane in sospeso


Caso d'uso UC7: registrazione cliente
Attore primario: utente/cliente
Scenario principale:
Il cliente effettua la registrazione in modo autonomo, inserendeo tutti i suoi dati (obbligatorio)
Il sistema, in caso di registrazione andata a buon fine, registra il cliente e presenta una pagina di conferma dell'avvenuta registrazione
In caso di registrazione non andata a buon fine, invece, il sistema mostra una pagina d'errore
Non è possibile registrare più di un cliente con la stessa email (univoca)
La password deve avere minimo 5 caratteri per essere valida
Motivazione: (la registrazione in modo autonomo del cliente, è una prassi normale di qualsiasi e-commerce)


Caso d'uso UC8: registrazione cliente
Attore primario: amministratore
Scenario principale:
L'amministratore registra un nuovo cliente, inserendeo tutti i suoi dati (obbligatorio)
Il sistema, in caso di registrazione andata a buon fine, registra il cliente e presenta una pagina di conferma dell'avvenuta registrazione
In caso di registrazione non andata a buon fine, invece, il sistema mostra una pagina d'errore
Non è possibile registrare più di un cliente con la stessa email (univoca)
La password deve avere minimo 5 caratteri per essere valida


Caso d'uso UC9: inserimento nuovo fornitore
Attore primario: amministrazione
Scenario principale:
L'amministratore inserisce un nuovo fornitore specificandone i dettagli
Il sistema registra il fornitore e mostra un riepilogo dei dati del fornitore appena inserito
I punti precedenti vengono ripetuti fino a che necessario
Non è possibile registrare più di un fornitore con la stessa email e/o partita iva (univoci)
Precondizioni: l'amministratore è identificato e autenticato
Motivazione: (l'amministratore può in qualsiasi momento aggiungere un nuovo fornitore per assegnarlo ad un determinato prodotto. 
Nel corso della vita dell'e-commerce, potrebbe cambiare più fornitori)


Caso d'uso UC10: modifica prodotti nel catalogo
Attore primario: amministrazione
Scenario principale:
L'amministratore clicca sul codice di un prodotto
Il sistema mostra i dettagli del prodotto
L'amministratore può modificare quel prodotto
I punti precedenti vengono ripetuti fino a che necessario
Precondizioni: l'amministratore è identificato e autenticato
Motivazione: (l'amministratore potrebbe sbagliare l'inserimento dei dati di un prodotto; nell'evadere l'ordine, la quantità la modifica manualmente)


Caso d'uso UC11: eliminazione prodotti nel catalogo
Attore primario: amministrazione
Scenario principale:
L'amministratore apre il catalogo prodotti
Il sistema mostra i dettagli del catalogo
L'amministratore può eliminare un prodotto cliccando sull'apposito pulsante
I punti precedenti vengono ripetuti fino a che necessario
Precondizioni: l'amministratore è identificato e autenticato
Motivazione: (un prodotto potrà non essere più venduto dall'e-commerce)
