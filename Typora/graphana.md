# graphite, grafana, statsd

### Install graphana

Install grafana from https://grafana.com/grafana/download

### Run graphana

```bash
brew services start grafana
```

Access Grafana at http://localhost:3000/ (user: admin, pass: guest)

### Run graphite

``````bash
docker run -d --name graphite --restart=always -p 80:80 -p 81:81 -p 2003-2004:2003-2004 -p 2023-2024:2023-2024 -p 8125:8125/udp -p 8126:8126 hopsoft/graphite-statsd
``````

Access Graphite at http://localhost:81/ 

---

A questo punto puoi inviare le stats su localhost. 
Su grafana devi impostare come data source `graphite` e creare una dashboard.
