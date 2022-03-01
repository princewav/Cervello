# 10.1.6.245:8091
## hit_counter
- idx_aggregate_immobiliareit_app
```sql
CREATE INDEX `idx_aggregate_immobiliareit_app` ON `hit_counter`((split((meta().`id`), "::")[0]),(split((meta().`id`), "::")[1]),`views`) WHERE ((`owner` = "immobiliareit") and ("app" in `tags`)) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_aggregate_indomiogr
```sql
CREATE INDEX `idx_aggregate_indomiogr` ON `hit_counter`((split((meta().`id`), "::")[0]),(split((meta().`id`), "::")[1]),`tags`,`views`) WHERE (`owner` = "indomiogr") WITH { "nodes":[ "10.1.6.245:8091" ] }
```
## agencies_matcher
- idx_comune
```sql
CREATE INDEX `idx_comune` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`nome` DESC) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_comune_not_conf
```sql
CREATE INDEX `idx_comune_not_conf` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (not (((`v`.`val`).`confirmed`) = true)) end)),`nome`) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_nome_desc
```sql
CREATE INDEX `idx_nome_desc` ON `agencies_matcher`((split((meta().`id`), "_")[1]),`nome` DESC) WITH { "nodes":[ "10.1.6.245:8091" ] }
```
- idx_prov_not_conf_miss
```sql
CREATE INDEX `idx_prov_not_conf_miss` ON `agencies_matcher`(`provincia`,`matches`,(split((meta().`id`), "_")[1])) WITH { "nodes":[ "10.1.6.245:8091" ] }
```

---

# 10.1.6.246:8091
## agencies_matcher
- #primary
```sql
CREATE PRIMARY INDEX `#primary` ON `agencies_matcher` WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_nome
```sql
CREATE INDEX `idx_nome` ON `agencies_matcher`((split((meta().`id`), "_")[1]),`nome`) WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_not_confirmed
```sql
CREATE INDEX `idx_not_confirmed` ON `agencies_matcher`((split((meta().`id`), "_")[1])) WHERE any `v` in object_pairs(`matches`) satisfies (not (((`v`.`val`).`confirmed`) = true)) end WITH { "nodes":[ "10.1.6.246:8091" ] }
```
- idx_not_matches
```sql
CREATE INDEX `idx_not_matches` ON `agencies_matcher`((split((meta().`id`), "_")[1])) WHERE (`matches` is missing) WITH { "nodes":[ "10.1.6.246:8091" ] }
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

## evaluations
- idx
```sql
CREATE PRIMARY INDEX `idx` ON `evaluations` WITH { "nodes":[ "10.1.6.246:8091" ] }
```

---

# 10.1.6.247:8091
## agencies_matcher
- idx_comune_asc
```sql
CREATE INDEX `idx_comune_asc` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`nome`)
```
- idx_comune_miss
```sql
CREATE INDEX `idx_comune_miss` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),`matches`,`nome`)
```
- idx_confirmed
```sql
CREATE INDEX `idx_confirmed` ON `agencies_matcher`((distinct (array `v` for `v` in object_pairs(`matches`) when (((`v`.`val`).`confirmed`) = true) end)),(meta().`id`))
```
- idx_excluded
```sql
CREATE INDEX `idx_excluded` ON `agencies_matcher`(`excluded_agency`)
```

## evaluations
- idx_date
```sql
CREATE INDEX `idx_date` ON `evaluations`((`REQUEST`.`date`))
```
- idx_endpoint
```sql
CREATE INDEX `idx_endpoint` ON `evaluations`((`REQUEST`.`endpoint`))
```
- idx_evaluation
```sql
CREATE INDEX `idx_evaluation` ON `evaluations`((`REQUEST`.`evaluation_type`))
```
- idx_request
```sql
CREATE INDEX `idx_evaluation` ON `evaluations`((`REQUEST`.`evaluation_type`))
```

## spider_weaver
- idx_reporter_agente
```sql
CREATE INDEX `idx_reporter_agente` ON `spider_weaver`((split((meta().`id`), "_")[0]),(`content`.`lastModified`),`created`,(split((meta().`id`), "_")[1])) WHERE ((split((meta().`id`), "_")[2]) = "agente")
```
- primary_idx
```sql
CREATE PRIMARY INDEX `primary_idx` ON `spider_weaver`
```

## spider_weaver_es
- #primary
```sql
CREATE PRIMARY INDEX `#primary` ON `spider_weaver_es`
```
- idx_reporter_agente
```sql
CREATE INDEX `idx_reporter_agente` ON `spider_weaver_es`((split((meta().`id`), "_")[0]),(`content`.`lastModified`),`created`,(split((meta().`id`), "_")[1])) WHERE ((split((meta().`id`), "_")[2]) = "agente")
```
- idx_reporter_annuncio
```sql
CREATE INDEX `idx_reporter_annuncio` ON `spider_weaver_es`((`content`.`lastModified`),`created`,(split((meta().`id`), "_")[1]),(`content`.`tipo_agenzia`),(`content`.`meta`)) WHERE ((split((meta().`id`), "_")[2]) = "annuncio")
```

---

# couchbase04.hst.ext.rm.ns.farm:8091
## agencies_matcher
- idx_comune_conf
```sql
CREATE INDEX `idx_comune_conf` ON `agencies_matcher`(`comune`,(split((meta().`id`), "_")[1]),(distinct (array `v` for `v` in object_pairs(`matches`) when (((`v`.`val`).`confirmed`) = true) end)),`nome`)
```

## hit_counter
- idx_aggregate2
```sql
CREATE INDEX `idx_aggregate2` ON `hit_counter`((split((meta().`id`), "::")[0]),(split((meta().`id`), "::")[1]),`tags`,`views`) WHERE (`owner` = "indomioes")
```

## old_private_images
- idx_images
```sql
CREATE INDEX `idx_images` ON `old_private_images`(`partner`,(meta().`id`),`recordDateTime`)
```

## spider_weaver
- idx_gap_agenzie
```sql
CREATE INDEX `idx_gap_agenzie` ON `spider_weaver`((split((meta().`id`), "_")[0]),(`content`.`lastModified`),`created`,(split((meta().`id`), "_")[1])) WHERE (((split((meta().`id`), "_")[2]) = "agente") and ((`content`.`tipo`) = "agency"))
```
- idx_priv2
```sql
CREATE INDEX `idx_priv2` ON `spider_weaver`(`created`) WHERE ((`content`.`tipo_agenzia`) = "private")
```
- idx_reporter_annuncio
```sql
CREATE INDEX `idx_reporter_annuncio` ON `spider_weaver`((`content`.`lastModified`),`created`,(split((meta().`id`), "_")[1]),(`content`.`tipo_agenzia`),(`content`.`meta`)) WHERE ((split((meta().`id`), "_")[2]) = "annuncio")
```


# Full Text Indexes
## agencies_matcher
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

# Full Text Aliases
## agencies_matcher
- name_index_es
    - name_index_fotocasaes, name_index_idealistaes, name_index_indomioes, name_index_pisoses
- name_index_it
    - name_index_bakeca, name_index_casait, name_index_idealista, name_index_immobiliare, name_index_kijiji, name_index_subito