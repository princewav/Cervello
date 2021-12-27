7-20 11-21 tutti gli annunci che hanno `tipo_inserzionista = agency`  attivi nella data di riferimento

start_date < x < lastModified

```sql
SELECT
    COUNT(*)
FROM
    spider_weaver 
WHERE
    content.lastModified > $ref_date
    AND created < $ref_date
    AND content.tipo_agenzia == 'agency'
    AND split(meta().id, "_") [1] == 'idealista' 
    AND split(meta().id, "_") [2] == 'annuncio'
```
```json
{
  "created": "2020-10-04T09:45:02Z",
  "content": {
    "telefono": "++39 3286176321",
    "nome": "Daniela",
    "lastModified": "2020-12-03T11:40:11Z",
    "provincia": "SR",
    "comune_literal": "Siracusa",
    "comune_geolocation": {
      "latitude": 37.0727618,
      "longitude": 15.2848466
    },
    "indirizzo": "Via G. Di Natale, 7",
    "zona": "Zona Santa Lucia",
    "id_zona": "2",
    "tipo": "private",
    "regione": "Sicilia",
    "cod_istat": "89017",
    "id_microzona": "11"
  },
  "original": {
    "comune_literal": "Siracusa"
  }
}
```
```json
{
  "created": "2019-08-29T00:00:00Z",
  "content": {
    "telefono": "0414380197",
    "lastModified": "2019-09-04T19:39:30Z",
    "img": "https://img3.idealista.it/blur/WEB_DETAIL/0/id.pro.it.image.master/71/ab/81/220329251.jpg",
    "mq": 120,
    "sottotipologia": "sot_app",
    "tipo_immobile": "Quadrilocale",
    "tipo_agenzia": "agency",
    "floor": "3",
    "id_microzona": "28",
    "tipologia": "tip_app",
    "url": "https://www.idealista.it/immobile/10000088/",
    "tipo_annuncio": "vendita",
    "comune_geolocation": {
      "longitude": 12.3293269,
      "latitude": 45.4329321
    },
    "sito": "www.idealista.it",
    "agenzia_id": "immobiliare-maison-a-venise-srl",
    "categoria": "cat_res",
    "comune_literal": "Venezia",
    "tipo_categoria": "appartamento",
    "regione": "VENETO",
    "site": "3",
    "prezzo": 595000,
    "cod_istat": "27042",
    "piano": "3º piano",
    "id_zona": "1",
    "indirizzo": "Salizzada Malipiero",
    "zona": "Zona Venezia e la Giudecca",
    "num_locali": 4
  },
  "image": {
    "uuid": "17efb380-da10-4312-9b10-106968d9ccf8",
    "url": "https://img3.idealista.it/blur/WEB_DETAIL/0/id.pro.it.image.master/71/ab/81/220329251.jpg",
    "header": {
      "content-length": "270774",
      "content-type": "image/jpeg"
    }
  },
  "deleted": true
}
```