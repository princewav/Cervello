# Couchbase Indexes
- #primary
```sql
CREATE PRIMARY INDEX `#primary` ON `agencies_matcher` WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_comune
```sql
CREATE INDEX `idx_comune` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`nome` DESC) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_comune_conf
```sql
CREATE INDEX `idx_comune_conf` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (((`v`.`val`).`confirmed`) = true) end)),`nome`)
```
- idx_comune_asc
```sql
CREATE INDEX `idx_comune_asc` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`nome`)
```
- idx_comune_miss
```sql
CREATE INDEX `idx_comune_miss` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`matches`,`nome`)
```
- idx_comune_not_conf
```sql
CREATE INDEX `idx_comune_not_conf` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (not (((`v`.`val`).`confirmed`) = true)) end)),`nome`) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_nome
```sql
CREATE INDEX `idx_nome` ON `agencies_matcher`((split((meta().`id`), "_")[1]),`nome`) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_nome_desc
```sql
CREATE INDEX `idx_nome_desc` ON `agencies_matcher`((split((meta().`id`), "_")[1]),`nome` DESC) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_prov
```sql
CREATE INDEX `idx_prov` ON `agencies_matcher`(`provincia`,(split((meta().`id`), "_")[1]),`nome`) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_prov_conf
```sql
CREATE INDEX `idx_prov_conf` ON `agencies_matcher`(`provincia`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (((`v`.`val`).`confirmed`) = true) end)),`nome`) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_prov_not_conf
```sql
CREATE INDEX `idx_prov_not_conf` ON `agencies_matcher`(`provincia`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (not (((`v`.`val`).`confirmed`) = true)) end)),`nome`) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_prov_not_conf_miss
```sql
CREATE INDEX `idx_prov_not_conf_miss` ON `agencies_matcher`(`provincia`,`matches`,(split((meta().`id`), "_")[1])) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_confirmed
```sql
CREATE INDEX `idx_confirmed` ON `agencies_matcher`((distinct (array `v` for `v` in object_pairs(`matches`) when (((`v`.`val`).`confirmed`) = true) end)),(meta().`id`))
```
- idx_not_confirmed
```sql
CREATE INDEX `idx_not_confirmed` ON `agencies_matcher`((split((meta().`id`), "_")[1])) WHERE any `v` in object_pairs(`matches`) satisfies (not (((`v`.`val`).`confirmed`) = true)) end WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_not_matches
```sql
CREATE INDEX `idx_not_matches` ON `agencies_matcher`((split((meta().`id`), "_")[1])) WHERE (`matches` is missing) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_excluded
```sql
CREATE INDEX `idx_excluded` ON `agencies_matcher`(`excluded_agency`)
```

---

## Full Text Indexes
- autocomplete_comune
- name_index
- name_index_bakeca
- name_index_casait
- name_index_fotocasaes
- name_index_idealista
- name_index_idealistaes
- name_index_immobiliare
- name_index_indomioes
- name_index_kijiji
- name_index_pisoses
- name_index_subito

## Full Text Aliases
- name_index_es
    - name_index_fotocasaes, name_index_idealistaes, name_index_indomioes, name_index_pisoses
- name_index_it
    - name_index_bakeca, name_index_casait, name_index_idealista, name_index_immobiliare, name_index_kijiji, name_index_subito