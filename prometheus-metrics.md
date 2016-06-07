
### go

**go_gc_duration_seconds**  
-Description: A summary of the GC invocation durations.  
-Type: go_gc_duration_seconds summary  

**go_goroutines**  
-Description: Number of goroutines that currently exist.  
-Type: go_goroutines gauge  

### http

**http_request_duration_microseconds**  
-Description: The HTTP request latencies in microseconds.  
-Type: http_request_duration_microseconds summary  

**http_request_size_bytes**  
-Description: The HTTP request sizes in bytes.  
-Type: http_request_size_bytes summary  

**http_requests_total**  
-Description: Total number of HTTP requests made.  
-Type: http_requests_total counter  

**http_response_size_bytes**  
-Description: The HTTP response sizes in bytes.  
-Type: http_response_size_bytes summary  

### process

**process_cpu_seconds_total**  
-Description: Total user and system CPU time spent in seconds.  
-Type: process_cpu_seconds_total counter  

**process_max_fds**  
-Description: Maximum number of open file descriptors.  
-Type: process_max_fds gauge  

**process_open_fds**  
-Description: Number of open file descriptors.  
-Type: process_open_fds gauge  

**process_resident_memory_bytes**  
-Description: Resident memory size in bytes.  
-Type: process_resident_memory_bytes gauge  

**process_start_time_seconds**  
-Description: Start time of the process since unix epoch in seconds.  
-Type: process_start_time_seconds gauge  

**process_virtual_memory_bytes**  
-Description: Virtual memory size in bytes.  
-Type: process_virtual_memory_bytes gauge  

**prometheus_build_info**  
-Description: A metric with a constant '1' value labeled by version, revision, and branch from which Prometheus was built.  
-Type: prometheus_build_info gauge  

### prometheus

#### prometheus_local_storage

**prometheus_local_storage_checkpoint_duration_milliseconds**  
-Description: The duration (in milliseconds) it took to checkpoint in-memory metrics and head chunks.  
-Type: prometheus_local_storage_checkpoint_duration_milliseconds gauge  

**prometheus_local_storage_chunk_ops_total**  
-Description: The total number of chunk operations by their type.  
-Type: prometheus_local_storage_chunk_ops_total counter  

**prometheus_local_storage_chunks_to_persist**  
-Description: The current number of chunks waiting for persistence.  
-Type: prometheus_local_storage_chunks_to_persist gauge  

**prometheus_local_storage_fingerprint_mappings_total**  
-Description: The total number of fingerprints being mapped to avoid collisions.  
-Type: prometheus_local_storage_fingerprint_mappings_total counter  

**prometheus_local_storage_inconsistencies_total**  
-Description: A counter incremented each time an inconsistency in the local storage is detected. If this is greater zero, restart the server as soon as possible.  
-Type: prometheus_local_storage_inconsistencies_total counter  

**prometheus_local_storage_indexing_batch_duration_milliseconds**  
-Description: Quantiles for batch indexing duration in milliseconds.  
-Type: prometheus_local_storage_indexing_batch_duration_milliseconds summary  

**prometheus_local_storage_indexing_batch_sizes**  
-Description: Quantiles for indexing batch sizes (number of metrics per batch).  
-Type: prometheus_local_storage_indexing_batch_sizes summary  

**prometheus_local_storage_indexing_queue_capacity*  *
-Description: The capacity of the indexing queue.  
-Type: prometheus_local_storage_indexing_queue_capacity gauge  

**prometheus_local_storage_indexing_queue_length**  
-Description: The number of metrics waiting to be indexed.  
-Type: prometheus_local_storage_indexing_queue_length gauge  

**prometheus_local_storage_ingested_samples_total**  
-Description: The total number of samples ingested.  
-Type: prometheus_local_storage_ingested_samples_total counter  

**prometheus_local_storage_invalid_preload_requests_total**  
-Description: The total number of preload requests referring to a non-existent series. This is an indication of outdated label indexes.  
-Type: prometheus_local_storage_invalid_preload_requests_total counter  

**prometheus_local_storage_maintain_series_duration_milliseconds**  
-Description: The duration (in milliseconds) it took to perform maintenance on a series.  
-Type: prometheus_local_storage_maintain_series_duration_milliseconds summary  

**prometheus_local_storage_max_chunks_to_persist**  
-Description: The maximum number of chunks that can be waiting for persistence before sample ingestion will stop.  
-Type: prometheus_local_storage_max_chunks_to_persist gauge  

**prometheus_local_storage_memory_chunkdescs**  
-Description: The current number of chunk descriptors in memory.  
-Type: prometheus_local_storage_memory_chunkdescs gauge  

**prometheus_local_storage_memory_chunks**  
-Description: The current number of chunks in memory, excluding cloned chunks (i.e. chunks without a descriptor).  
-Type: prometheus_local_storage_memory_chunks gauge  

**prometheus_local_storage_memory_series**  
-Description: The current number of series in memory.  
-Type: prometheus_local_storage_memory_series gauge  

**prometheus_local_storage_out_of_order_samples_total**  
-Description: The total number of samples that were discarded because their timestamps were at or before the last received sample for a series.  
-Type: prometheus_local_storage_out_of_order_samples_total counter  

**prometheus_local_storage_persist_errors_total**  
-Description: The total number of errors while persisting chunks.  
-Type: prometheus_local_storage_persist_errors_total counter  

**prometheus_local_storage_series_ops_total**  
-Description: The total number of series operations by their type.  
-Type: prometheus_local_storage_series_ops_total counter  

#### prometheus_notifications

**prometheus_notifications_latency_milliseconds**  
-Description: Latency quantiles for sending alert notifications (not including dropped notifications).  
-Type: prometheus_notifications_latency_milliseconds summary  

**prometheus_notifications_queue_capacity**  
-Description: The capacity of the alert notifications queue.  
-Type: prometheus_notifications_queue_capacity gauge  

**prometheus_notifications_queue_length**  
-Description: The number of alert notifications in the queue.  
-Type: prometheus_notifications_queue_length gauge  

#### prometheus_misc

**prometheus_rule_evaluation_failures_total**  
-Description: The total number of rule evaluation failures.  
-Type: prometheus_rule_evaluation_failures_total counter  

**prometheus_target_interval_length_seconds**  
-Description: Actual intervals between scrapes.  
-Type: prometheus_target_interval_length_seconds summary  

**prometheus_config_last_reload_success_timestamp_seconds**  
-Description: Timestamp of the last successful configuration reload.  
-Type: prometheus_config_last_reload_success_timestamp_seconds gauge  

**prometheus_config_last_reload_successful**  
-Description: Whether the last configuration reload attempt was successful.  
-Type: prometheus_config_last_reload_successful gauge  

**prometheus_dns_sd_lookup_failures_total**  
-Description: The number of DNS-SD lookup failures.  
-Type: prometheus_dns_sd_lookup_failures_total counter  

**prometheus_dns_sd_lookups_total**  
-Description: The number of DNS-SD lookups.  
-Type: prometheus_dns_sd_lookups_total counter  

**prometheus_evaluator_duration_milliseconds**  
-Description: The duration for all evaluations to execute.  
-Type: prometheus_evaluator_duration_milliseconds summary  
