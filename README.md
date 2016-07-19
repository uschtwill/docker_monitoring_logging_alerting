So I am currently setting up a monitoring dashboard for a [Docker](https://www.docker.com/)-host using [cAdvisor](https://github.com/google/cadvisor), [Prometheus](https://prometheus.io/) and [Grafana](http://grafana.org/).

cAdvisor for collection, Prometheus for storage, Grafana for visualisation.

Unfortunately Grafana doesn't appear to have a fancy query builder [like this one](https://youtu.be/sKNZMtoSHN4?t=2m14s), instead one has to plainly type out one's queries.

Alas, when building Grfana graphs/dashboards with Prometheus as a data storage, knowing it's query dsl and metric types is important. This also means, that documentation about using Grafana with an InfluxDB won't help you much, further narrowing down the number of avilable resources. This is kind of unfortunate. 

Here you can find the official documentation for Prometheus on both the query dsl and the metric types:


[Information on Prometheus Querying](https://prometheus.io/docs/querying/basics/)  
[Information on Prometheus Metric Types](https://prometheus.io/docs/concepts/metric_types/)  

Furthermore, since I couldn't find proper documentation on the metrics cAdvisor and Prometheus/Node-Exporter expose, I decided to just take the info from the /metrics entpoints and bring it into a human-readable format.

Check them out in the files above. Combining the information on the exposed metrics themselve with that on Prometheus' query dsl and metric types, you should be good to go to build some beautiful dashboards.

Versions:  
cAdvisor: 0.23.1  
Prometheus: 0.16.1  
[Node-Exporter](https://github.com/prometheus/node_exporter): 0.12.0
