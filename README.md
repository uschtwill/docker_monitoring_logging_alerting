If you have any feedback regarding this monitoring/logging suite, any ideas for improvement, fixes, questions or comments, please feel free to contact me or do a PR!

### What is this?

This is an out of the box monitoring and logging suite for [Docker](https://www.docker.com/)-hosts and their containers, complete with dashboards to monitor and explore your host and container logs and metrics.

Monitoring: [cAdvisor](https://github.com/google/cadvisor) and [node_exporter](https://github.com/prometheus/node_exporter) for collection, [Prometheus](https://prometheus.io/) for storage, [Grafana](http://grafana.org/) for visualisation.

Logging: [Filebeat](https://www.elastic.co/products/beats/filebeat) for collection and log-collection and forwarding, [Logstash](https://www.elastic.co/products/logstash) for aggregation and processing, [Elasticsearch](https://www.elastic.co/products/elasticsearch) as datastore/backend and [Kibana](https://www.elastic.co/products/kibana) as the frontend.

![grafana_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshot_grafana.png "Grafana Screenshot")

![kibana_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshot_kibana.png "Kibana Screenshot")

WARNING: This configuration is for testing purposes only. As it is simply forwarding ports at the moment, if your box is accessible publicly, all your logs and metrics will be out in the open. Switch off port forwarding before using this in an "online" environment.




### How to set it up?

1. `git clone` this repository: `git clone https://github.com/uschtwill/docker_monitoring_logging.git`
2. `cd` into the folder: `cd docker_monitoring_logging`
3. Run the setup script: `sh setup.sh`
4. Go to <a href="http://localhost:3000" target="_blank">localhost:3000</a>[]() and log in with username:`admin`, password:`admin`.
5. Go to <a href="http://localhost:3000/datasources/new" target="_blank">localhost:3000/datasources/new</a> and add Prometheus as a datasource like so: ![grafana_setup](https://github.com/uschtwill/docker_monitoring_logging/blob/master/grafana_setup.png "Grafana Setup").
6. Go to <a href="http://localhost:3000/dashboard/new?editview=import" target="_blank">localhost:3000/dashboard/new?editview=import</a> and import both dashboards from [./grafana/dashboards](https://github.com/uschtwill/docker_monitoring_logging/tree/master/grafana/dashboards).
7. Go to <a href="http://localhost:5601/app/kibana#/settings/indices/" target="_blank">localhost:5601/app/kibana#/settings/indices/</a> and add the `logstash-logs`index like so: ![kibana_setup](https://github.com/uschtwill/docker_monitoring_logging/blob/master/kibana_setup.png "Kibana Setup").
8. Go to <a href="http://localhost:5601/app/kibana#/settings/objects" target="_blank">localhost:5601/app/kibana#/settings/objects</a> and import both dashboards from [./kibana/dashboards](https://github.com/uschtwill/docker_monitoring_logging/tree/master/kibana/dashboards).
9. Enjoy and explore your logs and metrics:
  * To explore your logs: <a href="http://localhost:5601/app/kibana#/discover" target="_blank">localhost:5601/app/kibana#/discover</a>.
  - To explore your log metrics: <a href="http://localhost:5601/app/kibana#/dashboard/Exploration" target="_blank">localhost:5601/app/kibana#/dashboard/Exploration</a>.
  + To see your most important container and host metrics at a glance: <a href="http://localhost:3000/dashboard/db/main-overview" target="_blank">localhost:3000/dashboard/db/main-overview</a>.
  * To explore any metric that's collected without having to build queries: <a href="http://localhost:3000/dashboard/db/data-exploration" target="_blank">localhost:3000/dashboard/db/data-exploration</a>.
10. AFTER you're done testing this suite and you want to the state before setting up, run the cleanup script to clean up after yourself: `sh cleanup.sh`


### Grafana/Prometheus Query Building

Unfortunately Grafana doesn't appear to have a [fancy query builder](https://youtu.be/sKNZMtoSHN4?t=2m14s) for Prometheus as it does for Graphite or InfluxDB, instead one has to plainly type out one's queries.

Alas, when building Grafana graphs/dashboards with Prometheus as a data storage, knowing it's query dsl and metric types is important. This also means, that documentation about using Grafana with an InfluxDB won't help you much, further narrowing down the number of available resources. This is kind of unfortunate.

Here you can find the official documentation for Prometheus on both the query dsl and the metric types:


[Information on Prometheus Querying](https://prometheus.io/docs/querying/basics/)

[Information on Prometheus Metric Types](https://prometheus.io/docs/concepts/metric_types/)

Furthermore, since I couldn't find proper documentation on the metrics cAdvisor and Prometheus/Node-Exporter expose, I decided to just take the info from the /metrics entpoints and bring it into a human-readable format.

Check them [here](https://github.com/uschtwill/docker_monitoring_logging/tree/master/metrics-explained-for-grafana-query-building). Combining the information on the exposed metrics themselves with that on Prometheus' query dsl and metric types, you should be good to go to build some beautiful dashboards yourself.

Versions:
cAdvisor: 0.23.1
Prometheus: 0.16.1
Node-Exporter: 0.12.0
