#### Please let me know, if something is broken, so I can fix it!

If you have any feedback regarding this monitoring/logging/alerting suite, any ideas for improvement, fixes, questions or comments, please feel free to contact me or do a PR!

### What is this?

[Blog post on Medium with some more elaboration.](https://medium.com/@uschtwill/docker-container-and-host-monitoring-logging-in-a-box-e60c45aebcf8#.fd2wd5bup)

This is a **secure** out-of-the-box monitoring, logging and alerting suite for [Docker](https://www.docker.com/)-hosts and their containers, complete with dashboards to monitor and explore your host and container logs and metrics.

Monitoring: [cAdvisor](https://github.com/google/cadvisor) and [node_exporter](https://github.com/prometheus/node_exporter) for collection, [Prometheus](https://prometheus.io/) for storage, [Grafana](http://grafana.org/) for visualisation.

Logging: [Filebeat](https://www.elastic.co/products/beats/filebeat) for collection and log-collection and forwarding, [Logstash](https://www.elastic.co/products/logstash) for aggregation and processing, [Elasticsearch](https://www.elastic.co/products/elasticsearch) as datastore/backend and [Kibana](https://www.elastic.co/products/kibana) as the frontend.

Alerting: [elastalert](https://github.com/Yelp/elastalert) as a drop-in for Elastic.io's [Watcher](https://www.elastic.co/products/watcher) for alerts triggered by certain container or host log events and Prometheus' [Alertmanager](https://github.com/prometheus/alertmanager) for alerts regarding metrics.

Security: The whole suite can be run in `secure` mode, which places [jwilder's nginx reverse proxy](https://github.com/jwilder/nginx-proxy) (with [JrCs letsencrypt companion](https://github.com/JrCs/docker-letsencrypt-nginx-proxy-companion)) in front of the suite. This reverse proxy then handles all traffic to and from the suite, forces https, fully automates initial SSL certificate issuance and renewal, provides basic auth for all dashboards and allows to forgo any port forwarding from the suite containers to the host machine.

Of course you can then also use this nginx reverse proxy with the exact same mechanism to manage traffic to and from your other containers like applications, databases, api endpoints and what have you.

![grafana_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshots/screenshot_grafana.png "Grafana Screenshot")
The Grafana dashboard (a bit slimmed down) can also be found on grafana.net: [https://grafana.net/dashboards/395](https://grafana.net/dashboards/395).

![kibana_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshots/screenshot_kibana.png "Kibana Screenshot")

![alerts_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshots/screenshot_alerts.png "Alerts Screenshot")

![alerts_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshots/screenshots_slack_alerts.png "Slack Alerts Screenshot")


### How to set it up?

This repository comes with storage directories for Kibana and Grafana that contain the configuration for the data sources and dashboards. These directories will be mounted into the two containers as volumes. This is for your convenience and eliminates some manual setup steps.

1. `git clone` this repository: `git clone https://github.com/uschtwill/docker_monitoring_logging_alerting.git`
2. `cd` into the folder: `cd docker_monitoring_logging_alerting`
3. Check out the prerequisites in [`install-prerequisites.sh`](https://github.com/uschtwill/docker_monitoring_logging_alerting/blob/master/install-prerequisites.sh) and make sure they're fulfilled (or just run the script if the host is a fresh machine).
4. Run the setup script `setup.sh`.

#### For `secure` mode run `sh setup.sh secure YOUR_DOMAIN VERY_STRONG_PASSWORD`

5. Actually, before running the script, quickly create subdomain A-record DNS entries for grafana.DOMAIN, kibana.DOMAIN, prometheus.DOMAIN and alertmanager.DOMAIN that point at the host that is going to run the suite (DOMAIN being your domain).
6. Provided with your domain and a very strong password, `sh setup.sh secure YOUR_DOMAIN VERY_STRONG_PASSWORD` will set up the suite in secure mode, effectively:
  * running it with an nginx reverse proxy in front of it.
  * cutting out all port-forwarding nonsense.
  * downloading SSL certificates and keeping them up to date.
  * providing basic auth for all dashboards and locking them down with HTTPS(-only).
  * exposing dashboards at https://grafana.DOMAIN, https://kibana.DOMAIN, https://prometheus.DOMAIN and https://alertmanager.DOMAIN.
7. Run any containers with the same logging options as defined in this suite's `docker-compose.yml`and add a `container_group` label to enable monitoring, logging and alerting for them.
8. If you want to uninstall this suite completely, you can revert to the state before setting up by running the cleanup script: `sh cleanup.sh secure`.

#### For `unsecure` mode run `sh setup.sh unsecure`.

5. Enjoy and explore your logs and metrics:
  * To explore your logs: <a href="http://localhost:5601/app/kibana#/discover" target="_blank">localhost:5601/app/kibana#/discover</a>.
  - To explore your logging metrics: <a href="http://localhost:5601/app/kibana#/dashboard/Exploration" target="_blank">localhost:5601/app/kibana#/dashboard/Exploration</a>.
  + To see your most important container and host metrics at a glance: <a href="http://localhost:3000/dashboard/db/main-overview" target="_blank">localhost:3000/dashboard/db/main-overview</a>.
  * To explore any metric that's collected without having to build queries: <a href="http://localhost:3000/dashboard/db/data-exploration" target="_blank">localhost:3000/dashboard/db/data-exploration</a>.
  * To see all monitoring alerts and their status in prometheus: <a href="http://localhost:9090/alerts" target="_blank">localhost:9090/alerts</a>.
  * To manage your monitoring alerts (e.g. silence them) in Alertmanager: <a href="http://localhost:9093/#/alerts" target="_blank">localhost:9093/#/alerts</a>. Elastalert (logging alerts) unfortunately does not have a frontend.
  * Just to see what the cAdvisor frontend  looks like (you'll use Grafana for looking at monitoring metrics anyways): <a href="http://localhost:8080/containers/" target="_blank">localhost:8080/containers/</a>
  * To say hello to your Elasticsearch instance: `curl localhost:9200`.
6. Run any containers with the same logging options as defined in this suite's `docker-compose.yml`and add a `container_group` label to enable monitoring, logging and alerting for them.
7. AFTER you're done testing this suite, you can revert to the state before setting up by running the cleanup script to clean up after yourself: `sh cleanup.sh unsecure`.

For debugging: In case you would like certain containers to log to `stdout`because you're having trouble with ELK or simply because it feels more natural to you, you can simply comment out the logging options for individual containers. Logs of those containers will go to `stdout` while the logs for all other containers will continue to go to `logstash`.

```
#    logging:
#      driver: gelf
#      options:
#        gelf-address: udp://172.16.0.38:12201
#        labels: container_group
```

### Alerting and Annotations in Grafana

##### Notice: Since v4.0, Grafana also does alerting - with quite a nice GUI. I haven't tried it yet myself, but I encourage you to look into it: http://docs.grafana.org/guides/whats-new-in-v4/.

This suite uses elastalert and Alertmanager for alerting. Rules for logging alerts (elastalert) go into ./elastalert/rules/ and rules for monitoring alerts (Alertmanager) go into ./prometheus/rules/. Alertmanager only takes care of the communications part the monitoring alerts, the rules themselves are defined "in" Prometheus.

Both Alertmanager and elastalert can be configured to send their alerts to various outputs. In this suite, Logstash and Slack are set up. The integration with Logstash works out of the box, for adding Slack you will need to insert your webhook url.

The alerts that are sent to Logstash can be checked by looking at the 'logstash-alerts' index in Kibana. Apart from functioning as a first output, sending and storing the alerts to Elasticsearch via Logstash is also neat because it allows us to query them from Grafana and have them imported to its Dashboards as annotations.

![annotations_screenshot](https://github.com/uschtwill/docker_monitoring_logging/blob/master/screenshots/screenshot_annotations.png "Annotations Screenshot")

The monitoring alerting rules, which are stored in the Prometheus directory, contain a fake alert that should be firing from the beginning and demonstrates the concept. Find it and comment it out to have some peace. Also, there should be logging alerts coming in soon as well, this suite by itself already consists of 10 containers, and something is always complaining. Of course you can also force things by breaking stuff yourself - the `blanket_log-level_catch.yaml` rule that's already set up should catch it.

If you're annoyed by non-events repeatedly triggering alerts, throw them in ./logstash/config/31-non-events.conf in order for logstash to silence them by overwritting their log_level upon import.


### Grafana/Prometheus Query Building

Unfortunately Grafana doesn't appear to have a [fancy query builder](https://youtu.be/sKNZMtoSHN4?t=2m14s) for Prometheus as it has for Graphite or InfluxDB, instead one has to plainly type out one's queries.

Alas, when building Grafana graphs/dashboards with Prometheus as a data storage, knowing it's query dsl and metric types is important. This also means, that documentation about using Grafana with an InfluxDB won't help you much, further narrowing down the number of available resources. This is kind of unfortunate.

Here you can find the official documentation for Prometheus on both the query dsl and the metric types:


[Information on Prometheus Querying](https://prometheus.io/docs/querying/basics/)

[Information on Prometheus Metric Types](https://prometheus.io/docs/concepts/metric_types/)

Furthermore, since I couldn't find proper documentation on the metrics cAdvisor and Prometheus/Node-Exporter expose, I decided to just take the info from the /metrics entpoints and bring it into a human-readable format.

Check them [here](https://github.com/uschtwill/monitoring-metrics-descriptions). Combining the information on the exposed metrics themselves with that on Prometheus' query dsl and metric types, you should be good to go to build some beautiful dashboards yourself.

### Known Issues

**Bad umask:** If your umask is bad, and not for example 0022, it could create files/folder with low permissions. Some containers do not start up when that is the case, e.g. Kibana can't read the configd. Setting this umask before downloading the git repo fixes this issue. _(pointed out by @riemers)_
