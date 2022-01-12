# Query di unomas
- questa è la query che gira attualmente in produzione, non ci interessa il group by per il momento
```sql
SELECT
   SPLIT(meta().id, "::")[0] as uuid,
   sum(views) as views 
from
   hit_counter 
where
   $ tag in tags 
   and owner == "indomioes" 
   and SPLIT(meta().id, "::")[1] between $ start_date and $ end_date 
   and SPLIT(meta().id, "::")[0] is not missing 
group by
   SPLIT(meta().id, "::")[0]
```

- quello che cambierà saranno gli attributi `$tag`, l'owner che saranno `immobiliareit` o `indomioes` e gli attributi temporali
- la chiave è del tipo `<id>::<data>`
- i tag che utilizziamo sono: `visit, client-side, app e web`

---
## Esempio
```json
[
   {
      "hit_counter":{
         "category":"099b2059-9dfd-58fb-883d-2d12ff16077e",
         "meta":{
            
         },
         "owner":"indomioes",
         "tags":[
            "visit",
            "client-side",
            "app"
         ],
         "views":1
      }
   }
]
```