# miniserver
## Gestione delle eccezioni
- `get_static`
	- che succede se non si trova uno static?
		- [x] niente, si logga un messagio di errore. assicurarsi che non rompa il server
- `get_route`
	- che succede se non si trova una rotta?
		- [ ] si manda la pagina 404 con un tasto per tornare indietro + log
- `post`
	- che succede se non funziona la post? 2 casi
		- non funziona l'endpoint
			- [ ] si ritorna all'index con un messaggio d'errore nella pagina + log
		- non si trova il template 'fetch.j2'
			- [ ] si manda la pagina 404 con un tasto per tornare indietro + log



```
<a href={{get_path('insfsdfdex')}} class="button button-primary">Indietro</a>
```
