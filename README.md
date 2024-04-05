# istio hpa autoscaling demo

What follows is a step-by-step guide on configuring HPA v2 with metrics provided by Istio Mixer.
When installing Istio make sure that the telemetry service and Prometheus are enabled.

In order to use the Istio metrics together with the Horizontal Pod Autoscaler you'll need an adapter that
can run Prometheus queries. Zalando made a general purpose metrics adapter for Kubernetes called
[kube-metrics-adapter](https://github.com/zalando-incubator/kube-metrics-adapter).
The Zalando adapter scans the HPA objects, executes promql queries (specified with annotations) and
stores the metrics in memory.