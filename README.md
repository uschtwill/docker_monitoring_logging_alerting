So I am currently setting up a Grafana Dashboard for a Docker-host using cAdvisor, Grafana and Prometheus.

Since I couldn't find any proper documentation of the exposed metrics, I decided to just take the info from the /metrics entpoints and bring it into a human-readable format.

Maybe I can save someone a couple of minutes.

Versions:  
cAdvisor: 0.23.1  
Prometheus: 0.16.1  
Node-Exporter: 0.12.0
