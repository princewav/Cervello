Francesco ho un problema, con questi dati (trovati nella config `prod_es` di `competitors_history`) non riesco a collegarmi al db:
```json
GCP_PARAMS = {  
    "AUTH_FILE_PATH": "auth/api-project-718104768443-f67c24f9f384.json",  
    "DB_INSTANCE_NAME": "mktg-db",  
    "DB": "mktg_supply_es",  
    "USER": "mktg_supply_rw",  
    "PASSWORD": "mktg_supply_pwd",  
}
```
Invece usando i dati di immovisita, per esempio, riesco a collegarmi, quindi il procedimento di connessione funziona. Dunque o i parametri del db di supply sono sbagliati o non ho i permessi, credo

Questo è l'errore che ottengo:
`(1045, "Access denied for user 'mktg_supply_rw'@'cloudsqlproxy~79.18.105.133' (using password: YES)")`


---
Data ultimo import in gcp per competitor spagnoli:
- **Indomio** fino a 01/01/22
- **Pisos** fino a 01/01/22
- **Fotocasa** fino a 01/01/22
- **Idealista** fino a 25/12/21

Data ultimo json su sapi per competitor spagnoli
- **Indomio** fino a 08/01/22
- **Pisos** fino a 08/01/22
- **Fotocasa** fino a 08/01/22
- **Idealista** fino a 08/01/22
---
Sapi endpoint per i dati delle agenzie:
`http://sapi.srv.ext.rm.ns.farm:9977/storage/mktbi/mktbi-es/last_import_indomioes.json?auth=mktbi`
`http://sapi.srv.ext.rm.ns.farm:9977/storage/mktbi/mktbi-es/last_import_pisoses.json?auth=mktbi`
`http://sapi.srv.ext.rm.ns.farm:9977/storage/mktbi/mktbi-es/last_import_fotocasaes.json?auth=mktbi`
`http://sapi.srv.ext.rm.ns.farm:9977/storage/mktbi/mktbi-es/last_import_idealistaes.json?auth=mktbi`