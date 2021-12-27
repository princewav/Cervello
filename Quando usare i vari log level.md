source: https://stackoverflow.com/questions/2031163/when-to-use-the-different-log-levels


- **Trace** - Solo quando "traccio" il codice e cerchi di trovare una specifica parte di una funzione.
- **Debug** - Informazioni diagnostiche utili a persone che non siano sviluppatori (IT, amministratori di sistema, ecc.).
- **Info** - Informazioni generalmente utili da registrare. Informazioni che voglio avere sempre a disposizione, ma di solito non mi interessa in circostanze normali.
- **Warn** - Tutto ciò che può potenzialmente causare stranezze nell'applicazione, ma per il quale sto recuperando automaticamente. (Come passare da un server primario a un server di backup, ritentare un'operazione, dati secondari mancanti, ecc.)
- **Error** - Qualsiasi errore fatale per l'**operazione**, ma non per il servizio o l'applicazione (impossibile aprire un file richiesto, dati mancanti, ecc.). Questi errori forzeranno l'intervento dell'utente (amministratore o utente diretto).
- **Fatal**: qualsiasi errore che forza l'arresto del servizio o dell'applicazione per prevenire la perdita di dati (o ulteriore perdita di dati). Li riservo solo per gli errori e le situazioni più atroci in cui è garantito che si sia verificato un danneggiamento o una perdita di dati.