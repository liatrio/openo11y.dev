# Delivery Metrics Demo via GitHub and OpenTelemetry

## Introduction

Welcome to the Delivery Metrics demo page! This demo will use [tag-o11y-quickstart-manifests][quickstart] to spin 
quickly spin up a delivery demo leveraging the [Liatrio OTEL Collector][lotelcol] distribution in an additional profile to provide the following additional capabilities:

* Leading delivery indicators from GitHub using the Git Hub Receiver
* DORA Metrics from GitHub through the WebHook Event Receiver


## Getting Started

### Prerequisites
* Clone the [tag-o11y-quickstart-manifests][quickstart] using git
* A local kubernetes cluster
* Any prerequisites listen in the [tag-o11y-quickstart-manifests][quickstart] docs

### General Commands

Once those docs are reviewed and prerequisites met run:

* `make ghr`

If setup via the guide in the demo, then you should start to see metrics like
the below screenshots by navigating to Grafana:

* Grafana: <http://localhost:8080/grafana/>


[quickstart]: https://github.com/liatrio/tag-o11y-quick-start-manifests
[lotelcol]: https://github.com/liatrio/liatrio-otel-collector
[loteldemo]: https://github.com/liatrio/opentelemetry-demo
[loteldemoreqs]: https://github.com/liatrio/opentelemetry-demo/blob/main/docs/delivery.md#pre-requisites
[oteldemo]: https://opentelemetry.io/docs/demo/
[oteldemoreqs]: https://opentelemetry.io/docs/demo/docker-deployment/#prerequisites
