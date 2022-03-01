tot record = 89848237

https://blog.couchbase.com/wp-content/uploads/2017/10/N1QL-A-Practical-Guide-2nd-Edition.pdf

```sql
CREATE INDEX
    `idx_aggregate_immobiliareit`
ON `hit_counter`
(
    (split((meta().`id`), "::")[0]),
    (split((meta().`id`), "::")[1]),
    `tags`,
    `views`
)
WHERE (`owner` = "immobiliareit") 
WITH { "nodes":[ "couchbase02.hst.ext.rm.ns.farm:8091" ] }
```