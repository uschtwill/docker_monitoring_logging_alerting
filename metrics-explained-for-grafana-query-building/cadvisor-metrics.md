#### container_cpu

**container_cpu_system_seconds_total**  
-Description: Cumulative system cpu time consumed in seconds.  
-Type: counter  

**container_cpu_usage_seconds_total**  
-Description: Cumulative cpu time consumed per cpu in seconds.  
-Type: counter  

**container_cpu_user_seconds_total**  
-Description: Cumulative user cpu time consumed in seconds.  
-Type: counter  

#### container_fs

**container_fs_io_current**  
-Description: Number of I/Os currently in progress  
-Type: gauge  

**container_fs_io_time_seconds_total**  
-Description: Cumulative count of seconds spent doing I/Os  
-Type: counter  

**container_fs_io_time_weighted_seconds_total**  
-Description: Cumulative weighted I/O time in seconds  
-Type: counter  

**container_fs_limit_bytes**  
-Description: Number of bytes that can be consumed by the container on this filesystem.  
-Type: gauge  

**container_fs_read_seconds_total**  
-Description: Cumulative count of seconds spent reading  
-Type: counter  

**container_fs_reads_merged_total**  
-Description: Cumulative count of reads merged  
-Type: counter  

**container_fs_reads_total**  
-Description: Cumulative count of reads completed  
-Type: counter  

**container_fs_sector_reads_total**  
-Description: Cumulative count of sector reads completed  
-Type: counter  

**container_fs_sector_writes_total**  
-Description: Cumulative count of sector writes completed  
-Type: counter  

**container_fs_usage_bytes**  
-Description: Number of bytes that are consumed by the container on this filesystem.  
-Type: gauge  

**container_fs_write_seconds_total**  
-Description: Cumulative count of seconds spent writing  
-Type: counter  

**container_fs_writes_merged_total**  
-Description: Cumulative count of writes merged  
-Type: counter  

**container_fs_writes_total**  
-Description: Cumulative count of writes completed  
-Type: counter  

#### container_memory

**container_memory_cache**  
-Description: Number of bytes of page cache memory.  
-Type: gauge  

**container_memory_failcnt**  
-Description: Number of memory usage hits limits  
-Type: counter  

**container_memory_failures_total**  
-Description: Cumulative count of memory allocation failures.  
-Type: counter  

**container_memory_rss**  
-Description: Size of RSS in bytes.  
-Type: gauge  

**container_memory_usage_bytes**  
-Description: Current memory usage in bytes.  
-Type: gauge  

**container_memory_working_set_bytes**  
-Description: Current working set in bytes.  
-Type: gauge  

#### container_network

**container_network_receive_bytes_total**  
-Description: Cumulative count of bytes received  
-Type: counter  

**container_network_receive_errors_total**  
-Description: Cumulative count of errors encountered while receiving  
-Type: counter  

**container_network_receive_packets_dropped_total**  
-Description: Cumulative count of packets dropped while receiving  
-Type: counter  

**container_network_receive_packets_total**  
-Description: Cumulative count of packets received  
-Type: counter  

**container_network_transmit_bytes_total**  
-Description: Cumulative count of bytes transmitted  
-Type: counter  

**container_network_transmit_errors_total**  
-Description: Cumulative count of errors encountered while transmitting  
-Type: counter  

**container_network_transmit_packets_dropped_total**  
-Description: Cumulative count of packets dropped while transmitting  
-Type: counter  

**container_network_transmit_packets_total**  
-Description: Cumulative count of packets transmitted  
-Type: counter  

#### container_spec

**container_spec_cpu_period**  
-Description: CPU period of the container.  
-Type: gauge  

**container_spec_cpu_shares**  
-Description: CPU share of the container.  
-Type: gauge  

**container_spec_memory_limit_bytes**  
-Description: Memory limit for the container.  
-Type: gauge  

**container_spec_memory_swap_limit_bytes**  
-Description: Memory swap limit for the container.  
-Type: gauge  

#### container_misc

**container_last_seen**  
-Description: Last time a container was seen by the exporter  
-Type: gauge  

**container_scrape_error**  
-Description: 1 if there was an error while getting container metrics, 0 otherwise  
-Type: gauge  

**container_start_time_seconds**  
-Description: Start time of the container since unix epoch in seconds.  
-Type: gauge  

**container_tasks_state**  
-Description: Number of tasks in given state  
-Type: gauge  

### go

#### go_memstats

**go_memstats_alloc_bytes**  
-Description: Number of bytes allocated and still in use.  
-Type: gauge  

**go_memstats_alloc_bytes_total**  
-Description: Total number of bytes allocated, even if freed.  
-Type: counter  

**go_memstats_buck_hash_sys_bytes**  
-Description: Number of bytes used by the profiling bucket hash table.  
-Type: gauge  

**go_memstats_frees_total**  
-Description: Total number of frees.  
-Type: counter  

**go_memstats_gc_sys_bytes**  
-Description: Number of bytes used for garbage collection system metadata.  
-Type: gauge  

**go_memstats_heap_alloc_bytes**  
-Description: Number of heap bytes allocated and still in use.  
-Type: gauge  

**go_memstats_heap_idle_bytes**  
-Description: Number of heap bytes waiting to be used.  
-Type: gauge  

**go_memstats_heap_inuse_bytes**  
-Description: Number of heap bytes that are in use.  
-Type: gauge  

**go_memstats_heap_objects**  
-Description: Number of allocated objects.  
-Type: gauge  

**go_memstats_heap_released_bytes_total**  
-Description: Total number of heap bytes released to OS.  
-Type: counter  

**go_memstats_heap_sys_bytes**  
-Description: Number of heap bytes obtained from system.  
-Type: gauge  

**go_memstats_last_gc_time_seconds**  
-Description: Number of seconds since 1970 of last garbage collection.  
-Type: gauge  

**go_memstats_lookups_total**  
-Description: Total number of pointer lookups.  
-Type: counter  

**go_memstats_mallocs_total**  
-Description: Total number of mallocs.  
-Type: counter  

**go_memstats_mcache_inuse_bytes**  
-Description: Number of bytes in use by mcache structures.  
-Type: gauge  

**go_memstats_mcache_sys_bytes**  
-Description: Number of bytes used for mcache structures obtained from system.  
-Type: gauge  

**go_memstats_mspan_inuse_bytes**  
-Description: Number of bytes in use by mspan structures.  
-Type: gauge  

**go_memstats_mspan_sys_bytes**  
-Description: Number of bytes used for mspan structures obtained from system.  
-Type: gauge  

**go_memstats_next_gc_bytes**  
-Description: Number of heap bytes when next garbage collection will take place.  
-Type: gauge  

**go_memstats_other_sys_bytes**  
-Description: Number of bytes used for other system allocations.  
-Type: gauge  

**go_memstats_stack_inuse_bytes**  
-Description: Number of bytes in use by the stack allocator.  
-Type: gauge  

**go_memstats_stack_sys_bytes**  
-Description: Number of bytes obtained from system for stack allocator.  
-Type: gauge  

**go_memstats_sys_bytes**  
-Description: Number of bytes obtained by system. Sum of all system allocations.  
-Type: gauge  

#### go_misc

**go_gc_duration_seconds**  
-Description: A summary of the GC invocation durations.  
-Type: summary  

**go_goroutines**  
-Description: Number of goroutines that currently exist.  
-Type: gauge  

### http

**http_request_duration_microseconds**  
-Description: The HTTP request latencies in microseconds.  
-Type: summary  

**http_request_size_bytes**  
-Description: The HTTP request sizes in bytes.  
-Type: summary  

**http_requests_total**  
-Description: Total number of HTTP requests made.  
-Type: counter  

**http_response_size_bytes**  
-Description: The HTTP response sizes in bytes.  
-Type: summary  

### machine

**machine_cpu_cores**  
-Description: Number of CPU cores on the machine.  
-Type: gauge  

**machine_memory_bytes**  
-Description: Amount of memory installed on the machine.  
-Type: gauge  

### process

**process_cpu_seconds_total**  
-Description: Total user and system CPU time spent in seconds.  
-Type: counter  

**process_max_fds**  
-Description: Maximum number of open file descriptors.  
-Type: gauge  

**process_open_fds**  
-Description: Number of open file descriptors.  
-Type: gauge  

**process_resident_memory_bytes**  
-Description: Resident memory size in bytes.  
-Type: gauge  

**process_start_time_seconds**  
-Description: Start time of the process since unix epoch in seconds.  
-Type: gauge  

**process_virtual_memory_bytes**  
-Description: Virtual memory size in bytes.  
-Type: gauge  

### misc

**cadvisor_version_info**  
-Description: A metric with a constant '1' value labeled by kernel version, OS version, docker version, cadvisor version & cadvisor revision.  
-Type: gauge  
