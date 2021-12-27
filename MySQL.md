# MySQL
## highway
#### prod
**Valutazione immobiliare**
```console
mysql -h 34.89.228.64 -u mktg_valutazione_rw -pCAPLA7Q3utbXWT46 mktg_valutazione
```

**Immovisita**
```console
mysql -h 34.159.82.253 -u product_immovisita_rw -pH75QLs7CVWSkAAuB product_immovisita
```

#### dev
**Nota:** lanciare docker
```console
mysql -h localhost -P 3306 --protocol=tcp -u root -proot mktg_raw_test
```
---
### Eseguire un dump
#### prod
**Valutazione immobiliare**
```console
mysqldump --single-transaction --no-tablespaces -h 34.89.228.64 -u mktg_valutazione_rw -pCAPLA7Q3utbXWT46 mktg_valutazione > /Users/edoardo.principe/Desktop/valutazione_dump.sql
```
---
### Eseguire script SQL
```console
mysql -h localhost -P 3306 --protocol=tcp -u root -proot mktg_raw_test < "/Users/edoardo.principe/Desktop/valutazione_dump.sql"
```

---
## Linguaggio SQL
### Modificare il tipo di una colonna
```sql
ALTER TABLE {table_name} MODIFY {column_name} {new_field_type};
```
Esempio:
```sql
ALTER TABLE valutazione_immobiliare MODIFY vista TEXT;
```