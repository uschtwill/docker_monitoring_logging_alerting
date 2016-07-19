
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

### node

#### node_disk

**node_disk_bytes_read**  
-Description: The total number of bytes read successfully.  
-Type: counter  

**node_disk_bytes_written**  
-Description: The total number of bytes written successfully.  
-Type: counter  

**node_disk_io_now**  
-Description: The number of I/Os currently in progress.  
-Type: gauge  

**node_disk_io_time_ms**  
-Description: Milliseconds spent doing I/Os.  
-Type: counter  

**node_disk_io_time_weighted**  
-Description: The weighted # of milliseconds spent doing I/Os. See https://www.kernel.org/doc/Documentation/iostats.txt.  
-Type: counter  

**node_disk_read_time_ms**  
-Description: The total number of milliseconds spent by all reads.  
-Type: counter  

**node_disk_reads_completed**  
-Description: The total number of reads completed successfully.  
-Type: counter  

**node_disk_reads_merged**  
-Description: The number of reads merged. See https://www.kernel.org/doc/Documentation/iostats.txt.  
-Type: counter  

**node_disk_sectors_read**  
-Description: The total number of sectors read successfully.  
-Type: counter  

**node_disk_sectors_written**  
-Description: The total number of sectors written successfully.  
-Type: counter  

**node_disk_write_time_ms**  
-Description: This is the total number of milliseconds spent by all writes.  
-Type: counter  

**node_disk_writes_completed**  
-Description: The total number of writes completed successfully.  
-Type: counter  

**node_disk_writes_merged**  
-Description: The number of writes merged. See https://www.kernel.org/doc/Documentation/iostats.txt.  
-Type: counter  

#### node_filesystem

**node_filesystem_avail**  
-Description: Filesystem space available to non-root users in bytes.  
-Type: gauge  

**node_filesystem_files**  
-Description: Filesystem total file nodes.  
-Type: gauge  

**node_filesystem_files_free**  
-Description: Filesystem total free file nodes.  
-Type: gauge  

**node_filesystem_free**  
-Description: Filesystem free space in bytes.  
-Type: gauge  

**node_filesystem_readonly**  
-Description: Filesystem read-only status.  
-Type: gauge  

**node_filesystem_size**  
-Description: Filesystem size in bytes.  
-Type: gauge  

### node_memory

**node_memory_Active**  
-Description: Memory information field Active.  
-Type: gauge  

**node_memory_Active_anon**  
-Description: Memory information field Active_anon.  
-Type: gauge  

**node_memory_Active_file**  
-Description: Memory information field Active_file.  
-Type: gauge  

**node_memory_AnonHugePages**  
-Description: Memory information field AnonHugePages.  
-Type: gauge  

**node_memory_AnonPages**  
-Description: Memory information field AnonPages.  
-Type: gauge  

**node_memory_Bounce**  
-Description: Memory information field Bounce.  
-Type: gauge  

**node_memory_Buffers**  
-Description: Memory information field Buffers.  
-Type: gauge  

**node_memory_Cached**  
-Description: Memory information field Cached.  
-Type: gauge  

**node_memory_CommitLimit**  
-Description: Memory information field CommitLimit.  
-Type: gauge  

**node_memory_Committed_AS**  
-Description: Memory information field Committed_AS.  
-Type: gauge  

**node_memory_DirectMap2M**  
-Description: Memory information field DirectMap2M.  
-Type: gauge  

**node_memory_DirectMap4k**  
-Description: Memory information field DirectMap4k.  
-Type: gauge  

**node_memory_Dirty**  
-Description: Memory information field Dirty.  
-Type: gauge  

**node_memory_HugePages_Free**  
-Description: Memory information field HugePages_Free.  
-Type: gauge  

**node_memory_HugePages_Rsvd**  
-Description: Memory information field HugePages_Rsvd.  
-Type: gauge  

**node_memory_HugePages_Surp**  
-Description: Memory information field HugePages_Surp.  
-Type: gauge  

**node_memory_HugePages_Total**  
-Description: Memory information field HugePages_Total.  
-Type: gauge  

**node_memory_Hugepagesize**  
-Description: Memory information field Hugepagesize.  
-Type: gauge  

**node_memory_Inactive**  
-Description: Memory information field Inactive.  
-Type: gauge  

**node_memory_Inactive_anon**  
-Description: Memory information field Inactive_anon.  
-Type: gauge  

**node_memory_Inactive_file**  
-Description: Memory information field Inactive_file.  
-Type: gauge  

**node_memory_KernelStack**  
-Description: Memory information field KernelStack.  
-Type: gauge  

**node_memory_Mapped**  
-Description: Memory information field Mapped.  
-Type: gauge  

**node_memory_MemAvailable**  
-Description: Memory information field MemAvailable.  
-Type: gauge  

**node_memory_MemFree**  
-Description: Memory information field MemFree.  
-Type: gauge  

**node_memory_MemTotal**  
-Description: Memory information field MemTotal.  
-Type: gauge  

**node_memory_Mlocked**  
-Description: Memory information field Mlocked.  
-Type: gauge  

**node_memory_NFS_Unstable**  
-Description: Memory information field NFS_Unstable.  
-Type: gauge  

**node_memory_PageTables**  
-Description: Memory information field PageTables.  
-Type: gauge  

**node_memory_SReclaimable**  
-Description: Memory information field SReclaimable.  
-Type: gauge  

**node_memory_SUnreclaim**  
-Description: Memory information field SUnreclaim.  
-Type: gauge  

**node_memory_Shmem**  
-Description: Memory information field Shmem.  
-Type: gauge  

**node_memory_Slab**  
-Description: Memory information field Slab.  
-Type: gauge  

**node_memory_SwapCached**  
-Description: Memory information field SwapCached.  
-Type: gauge  

**node_memory_SwapFree**  
-Description: Memory information field SwapFree.  
-Type: gauge  

**node_memory_SwapTotal**  
-Description: Memory information field SwapTotal.  
-Type: gauge  

**node_memory_Unevictable**  
-Description: Memory information field Unevictable.  
-Type: gauge  

**node_memory_VmallocChunk**  
-Description: Memory information field VmallocChunk.  
-Type: gauge  

**node_memory_VmallocTotal**  
-Description: Memory information field VmallocTotal.  
-Type: gauge  

**node_memory_VmallocUsed**  
-Description: Memory information field VmallocUsed.  
-Type: gauge  

**node_memory_Writeback**  
-Description: Memory information field Writeback.  
-Type: gauge  

**node_memory_WritebackTmp**  
-Description: Memory information field WritebackTmp.  
-Type: gauge  

### node_netstat

#### node_netstat_Icmp

**node_netstat_Icmp_InAddrMaskReps**  
-Description: Protocol Icmp statistic InAddrMaskReps.  
-Type: gauge  

**node_netstat_Icmp_InAddrMasks**  
-Description: Protocol Icmp statistic InAddrMasks.  
-Type: gauge  

**node_netstat_Icmp_InCsumErrors**  
-Description: Protocol Icmp statistic InCsumErrors.  
-Type: gauge  

**node_netstat_Icmp_InDestUnreachs**  
-Description: Protocol Icmp statistic InDestUnreachs.  
-Type: gauge  

**node_netstat_Icmp_InEchoReps**  
-Description: Protocol Icmp statistic InEchoReps.  
-Type: gauge  

**node_netstat_Icmp_InEchos**  
-Description: Protocol Icmp statistic InEchos.  
-Type: gauge  

**node_netstat_Icmp_InErrors**  
-Description: Protocol Icmp statistic InErrors.  
-Type: gauge  

**node_netstat_Icmp_InMsgs**  
-Description: Protocol Icmp statistic InMsgs.  
-Type: gauge  

**node_netstat_Icmp_InParmProbs**  
-Description: Protocol Icmp statistic InParmProbs.  
-Type: gauge  

**node_netstat_Icmp_InRedirects**  
-Description: Protocol Icmp statistic InRedirects.  
-Type: gauge  

**node_netstat_Icmp_InSrcQuenchs**  
-Description: Protocol Icmp statistic InSrcQuenchs.  
-Type: gauge  

**node_netstat_Icmp_InTimeExcds**  
-Description: Protocol Icmp statistic InTimeExcds.  
-Type: gauge  

**node_netstat_Icmp_InTimestampReps**  
-Description: Protocol Icmp statistic InTimestampReps.  
-Type: gauge  

**node_netstat_Icmp_InTimestamps**  
-Description: Protocol Icmp statistic InTimestamps.  
-Type: gauge  

**node_netstat_Icmp_OutAddrMaskReps**  
-Description: Protocol Icmp statistic OutAddrMaskReps.  
-Type: gauge  

**node_netstat_Icmp_OutAddrMasks**  
-Description: Protocol Icmp statistic OutAddrMasks.  
-Type: gauge  

**node_netstat_Icmp_OutDestUnreachs**  
-Description: Protocol Icmp statistic OutDestUnreachs.  
-Type: gauge  

**node_netstat_Icmp_OutEchoReps**  
-Description: Protocol Icmp statistic OutEchoReps.  
-Type: gauge  

**node_netstat_Icmp_OutEchos**  
-Description: Protocol Icmp statistic OutEchos.  
-Type: gauge  

**node_netstat_Icmp_OutErrors**  
-Description: Protocol Icmp statistic OutErrors.  
-Type: gauge  

**node_netstat_Icmp_OutMsgs**  
-Description: Protocol Icmp statistic OutMsgs.  
-Type: gauge  

**node_netstat_Icmp_OutParmProbs**  
-Description: Protocol Icmp statistic OutParmProbs.  
-Type: gauge  

**node_netstat_Icmp_OutRedirects**  
-Description: Protocol Icmp statistic OutRedirects.  
-Type: gauge  

**node_netstat_Icmp_OutSrcQuenchs**  
-Description: Protocol Icmp statistic OutSrcQuenchs.  
-Type: gauge  

**node_netstat_Icmp_OutTimeExcds**  
-Description: Protocol Icmp statistic OutTimeExcds.  
-Type: gauge  

**node_netstat_Icmp_OutTimestampReps**  
-Description: Protocol Icmp statistic OutTimestampReps.  
-Type: gauge  

**node_netstat_Icmp_OutTimestamps**  
-Description: Protocol Icmp statistic OutTimestamps.  
-Type: gauge  

#### node_netstat_IpExt

**node_netstat_IpExt_InBcastOctets**  
-Description: Protocol IpExt statistic InBcastOctets.  
-Type: gauge  

**node_netstat_IpExt_InBcastPkts**  
-Description: Protocol IpExt statistic InBcastPkts.  
-Type: gauge  

**node_netstat_IpExt_InCEPkts**  
-Description: Protocol IpExt statistic InCEPkts.  
-Type: gauge  

**node_netstat_IpExt_InCsumErrors**  
-Description: Protocol IpExt statistic InCsumErrors.  
-Type: gauge  

**node_netstat_IpExt_InECT0Pkts**  
-Description: Protocol IpExt statistic InECT0Pkts.  
-Type: gauge  

**node_netstat_IpExt_InECT1Pkts**  
-Description: Protocol IpExt statistic InECT1Pkts.  
-Type: gauge  

**node_netstat_IpExt_InMcastOctets**  
-Description: Protocol IpExt statistic InMcastOctets.  
-Type: gauge  

**node_netstat_IpExt_InMcastPkts**  
-Description: Protocol IpExt statistic InMcastPkts.  
-Type: gauge  

**node_netstat_IpExt_InNoECTPkts**  
-Description: Protocol IpExt statistic InNoECTPkts.  
-Type: gauge  

**node_netstat_IpExt_InNoRoutes**  
-Description: Protocol IpExt statistic InNoRoutes.  
-Type: gauge  

**node_netstat_IpExt_InOctets**  
-Description: Protocol IpExt statistic InOctets.  
-Type: gauge  

**node_netstat_IpExt_InTruncatedPkts**  
-Description: Protocol IpExt statistic InTruncatedPkts.  
-Type: gauge  

**node_netstat_IpExt_OutBcastOctets**  
-Description: Protocol IpExt statistic OutBcastOctets.  
-Type: gauge  

**node_netstat_IpExt_OutBcastPkts**  
-Description: Protocol IpExt statistic OutBcastPkts.  
-Type: gauge  

**node_netstat_IpExt_OutMcastOctets**  
-Description: Protocol IpExt statistic OutMcastOctets.  
-Type: gauge  

**node_netstat_IpExt_OutMcastPkts**  
-Description: Protocol IpExt statistic OutMcastPkts.  
-Type: gauge  

**node_netstat_IpExt_OutOctets**  
-Description: Protocol IpExt statistic OutOctets.  
-Type: gauge  

#### node_netstat_Ip

**node_netstat_Ip_DefaultTTL**  
-Description: Protocol Ip statistic DefaultTTL.  
-Type: gauge  

**node_netstat_Ip_ForwDatagrams**  
-Description: Protocol Ip statistic ForwDatagrams.  
-Type: gauge  

**node_netstat_Ip_Forwarding**  
-Description: Protocol Ip statistic Forwarding.  
-Type: gauge  

**node_netstat_Ip_FragCreates**  
-Description: Protocol Ip statistic FragCreates.  
-Type: gauge  

**node_netstat_Ip_FragFails**  
-Description: Protocol Ip statistic FragFails.  
-Type: gauge  

**node_netstat_Ip_FragOKs**  
-Description: Protocol Ip statistic FragOKs.  
-Type: gauge  

**node_netstat_Ip_InAddrErrors**  
-Description: Protocol Ip statistic InAddrErrors.  
-Type: gauge  

**node_netstat_Ip_InDelivers**  
-Description: Protocol Ip statistic InDelivers.  
-Type: gauge  

**node_netstat_Ip_InDiscards**  
-Description: Protocol Ip statistic InDiscards.  
-Type: gauge  

**node_netstat_Ip_InHdrErrors**  
-Description: Protocol Ip statistic InHdrErrors.  
-Type: gauge  

**node_netstat_Ip_InReceives**  
-Description: Protocol Ip statistic InReceives.  
-Type: gauge  

**node_netstat_Ip_InUnknownProtos**  
-Description: Protocol Ip statistic InUnknownProtos.  
-Type: gauge  

**node_netstat_Ip_OutDiscards**  
-Description: Protocol Ip statistic OutDiscards.  
-Type: gauge  

**node_netstat_Ip_OutNoRoutes**  
-Description: Protocol Ip statistic OutNoRoutes.  
-Type: gauge  

**node_netstat_Ip_OutRequests**  
-Description: Protocol Ip statistic OutRequests.  
-Type: gauge  

**node_netstat_Ip_ReasmFails**  
-Description: Protocol Ip statistic ReasmFails.  
-Type: gauge  

**node_netstat_Ip_ReasmOKs**  
-Description: Protocol Ip statistic ReasmOKs.  
-Type: gauge  

**node_netstat_Ip_ReasmReqds**  
-Description: Protocol Ip statistic ReasmReqds.  
-Type: gauge  

**node_netstat_Ip_ReasmTimeout**  
-Description: Protocol Ip statistic ReasmTimeout.  
-Type: gauge  

**node_netstat_TcpExt_ArpFilter**  
-Description: Protocol TcpExt statistic ArpFilter.  
-Type: gauge  

#### node_netstat_TcpExt

**node_netstat_TcpExt_BusyPollRxPackets**  
-Description: Protocol TcpExt statistic BusyPollRxPackets.  
-Type: gauge  

**node_netstat_TcpExt_DelayedACKLocked**  
-Description: Protocol TcpExt statistic DelayedACKLocked.  
-Type: gauge  

**node_netstat_TcpExt_DelayedACKLost**  
-Description: Protocol TcpExt statistic DelayedACKLost.  
-Type: gauge  

**node_netstat_TcpExt_DelayedACKs**  
-Description: Protocol TcpExt statistic DelayedACKs.  
-Type: gauge  

**node_netstat_TcpExt_EmbryonicRsts**  
-Description: Protocol TcpExt statistic EmbryonicRsts.  
-Type: gauge  

**node_netstat_TcpExt_IPReversePathFilter**  
-Description: Protocol TcpExt statistic IPReversePathFilter.  
-Type: gauge  

**node_netstat_TcpExt_ListenDrops**  
-Description: Protocol TcpExt statistic ListenDrops.  
-Type: gauge  

**node_netstat_TcpExt_ListenOverflows**  
-Description: Protocol TcpExt statistic ListenOverflows.  
-Type: gauge  

**node_netstat_TcpExt_LockDroppedIcmps**  
-Description: Protocol TcpExt statistic LockDroppedIcmps.  
-Type: gauge  

**node_netstat_TcpExt_OfoPruned**  
-Description: Protocol TcpExt statistic OfoPruned.  
-Type: gauge  

**node_netstat_TcpExt_OutOfWindowIcmps**  
-Description: Protocol TcpExt statistic OutOfWindowIcmps.  
-Type: gauge  

**node_netstat_TcpExt_PAWSActive**  
-Description: Protocol TcpExt statistic PAWSActive.  
-Type: gauge  

**node_netstat_TcpExt_PAWSEstab**  
-Description: Protocol TcpExt statistic PAWSEstab.  
-Type: gauge  

**node_netstat_TcpExt_PAWSPassive**  
-Description: Protocol TcpExt statistic PAWSPassive.  
-Type: gauge  

**node_netstat_TcpExt_PruneCalled**  
-Description: Protocol TcpExt statistic PruneCalled.  
-Type: gauge  

**node_netstat_TcpExt_RcvPruned**  
-Description: Protocol TcpExt statistic RcvPruned.  
-Type: gauge  

**node_netstat_TcpExt_SyncookiesFailed**  
-Description: Protocol TcpExt statistic SyncookiesFailed.  
-Type: gauge  

**node_netstat_TcpExt_SyncookiesRecv**  
-Description: Protocol TcpExt statistic SyncookiesRecv.  
-Type: gauge  

**node_netstat_TcpExt_SyncookiesSent**  
-Description: Protocol TcpExt statistic SyncookiesSent.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedChallenge**  
-Description: Protocol TcpExt statistic TCPACKSkippedChallenge.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedFinWait2**  
-Description: Protocol TcpExt statistic TCPACKSkippedFinWait2.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedPAWS**  
-Description: Protocol TcpExt statistic TCPACKSkippedPAWS.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedSeq**  
-Description: Protocol TcpExt statistic TCPACKSkippedSeq.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedSynRecv**  
-Description: Protocol TcpExt statistic TCPACKSkippedSynRecv.  
-Type: gauge  

**node_netstat_TcpExt_TCPACKSkippedTimeWait**  
-Description: Protocol TcpExt statistic TCPACKSkippedTimeWait.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortFailed**  
-Description: Protocol TcpExt statistic TCPAbortFailed.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortOnClose**  
-Description: Protocol TcpExt statistic TCPAbortOnClose.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortOnData**  
-Description: Protocol TcpExt statistic TCPAbortOnData.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortOnLinger**  
-Description: Protocol TcpExt statistic TCPAbortOnLinger.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortOnMemory**  
-Description: Protocol TcpExt statistic TCPAbortOnMemory.  
-Type: gauge  

**node_netstat_TcpExt_TCPAbortOnTimeout**  
-Description: Protocol TcpExt statistic TCPAbortOnTimeout.  
-Type: gauge  

**node_netstat_TcpExt_TCPAutoCorking**  
-Description: Protocol TcpExt statistic TCPAutoCorking.  
-Type: gauge  

**node_netstat_TcpExt_TCPBacklogDrop**  
-Description: Protocol TcpExt statistic TCPBacklogDrop.  
-Type: gauge  

**node_netstat_TcpExt_TCPChallengeACK**  
-Description: Protocol TcpExt statistic TCPChallengeACK.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKIgnoredNoUndo**  
-Description: Protocol TcpExt statistic TCPDSACKIgnoredNoUndo.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKIgnoredOld**  
-Description: Protocol TcpExt statistic TCPDSACKIgnoredOld.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKOfoRecv**  
-Description: Protocol TcpExt statistic TCPDSACKOfoRecv.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKOfoSent**  
-Description: Protocol TcpExt statistic TCPDSACKOfoSent.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKOldSent**  
-Description: Protocol TcpExt statistic TCPDSACKOldSent.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKRecv**  
-Description: Protocol TcpExt statistic TCPDSACKRecv.  
-Type: gauge  

**node_netstat_TcpExt_TCPDSACKUndo**  
-Description: Protocol TcpExt statistic TCPDSACKUndo.  
-Type: gauge  

**node_netstat_TcpExt_TCPDeferAcceptDrop**  
-Description: Protocol TcpExt statistic TCPDeferAcceptDrop.  
-Type: gauge  

**node_netstat_TcpExt_TCPDirectCopyFromBacklog**  
-Description: Protocol TcpExt statistic TCPDirectCopyFromBacklog.  
-Type: gauge  

**node_netstat_TcpExt_TCPDirectCopyFromPrequeue**  
-Description: Protocol TcpExt statistic TCPDirectCopyFromPrequeue.  
-Type: gauge  

**node_netstat_TcpExt_TCPFACKReorder**  
-Description: Protocol TcpExt statistic TCPFACKReorder.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenActive**  
-Description: Protocol TcpExt statistic TCPFastOpenActive.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenActiveFail**  
-Description: Protocol TcpExt statistic TCPFastOpenActiveFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenCookieReqd**  
-Description: Protocol TcpExt statistic TCPFastOpenCookieReqd.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenListenOverflow**  
-Description: Protocol TcpExt statistic TCPFastOpenListenOverflow.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenPassive**  
-Description: Protocol TcpExt statistic TCPFastOpenPassive.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastOpenPassiveFail**  
-Description: Protocol TcpExt statistic TCPFastOpenPassiveFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPFastRetrans**  
-Description: Protocol TcpExt statistic TCPFastRetrans.  
-Type: gauge  

**node_netstat_TcpExt_TCPForwardRetrans**  
-Description: Protocol TcpExt statistic TCPForwardRetrans.  
-Type: gauge  

**node_netstat_TcpExt_TCPFromZeroWindowAdv**  
-Description: Protocol TcpExt statistic TCPFromZeroWindowAdv.  
-Type: gauge  

**node_netstat_TcpExt_TCPFullUndo**  
-Description: Protocol TcpExt statistic TCPFullUndo.  
-Type: gauge  

**node_netstat_TcpExt_TCPHPAcks**  
-Description: Protocol TcpExt statistic TCPHPAcks.  
-Type: gauge  

**node_netstat_TcpExt_TCPHPHits**  
-Description: Protocol TcpExt statistic TCPHPHits.  
-Type: gauge  

**node_netstat_TcpExt_TCPHPHitsToUser**  
-Description: Protocol TcpExt statistic TCPHPHitsToUser.  
-Type: gauge  

**node_netstat_TcpExt_TCPHystartDelayCwnd**  
-Description: Protocol TcpExt statistic TCPHystartDelayCwnd.  
-Type: gauge  

**node_netstat_TcpExt_TCPHystartDelayDetect**  
-Description: Protocol TcpExt statistic TCPHystartDelayDetect.  
-Type: gauge  

**node_netstat_TcpExt_TCPHystartTrainCwnd**  
-Description: Protocol TcpExt statistic TCPHystartTrainCwnd.  
-Type: gauge  

**node_netstat_TcpExt_TCPHystartTrainDetect**  
-Description: Protocol TcpExt statistic TCPHystartTrainDetect.  
-Type: gauge  

**node_netstat_TcpExt_TCPKeepAlive**  
-Description: Protocol TcpExt statistic TCPKeepAlive.  
-Type: gauge  

**node_netstat_TcpExt_TCPLossFailures**  
-Description: Protocol TcpExt statistic TCPLossFailures.  
-Type: gauge  

**node_netstat_TcpExt_TCPLossProbeRecovery**  
-Description: Protocol TcpExt statistic TCPLossProbeRecovery.  
-Type: gauge  

**node_netstat_TcpExt_TCPLossProbes**  
-Description: Protocol TcpExt statistic TCPLossProbes.  
-Type: gauge  

**node_netstat_TcpExt_TCPLossUndo**  
-Description: Protocol TcpExt statistic TCPLossUndo.  
-Type: gauge  

**node_netstat_TcpExt_TCPLostRetransmit**  
-Description: Protocol TcpExt statistic TCPLostRetransmit.  
-Type: gauge  

**node_netstat_TcpExt_TCPMD5NotFound**  
-Description: Protocol TcpExt statistic TCPMD5NotFound.  
-Type: gauge  

**node_netstat_TcpExt_TCPMD5Unexpected**  
-Description: Protocol TcpExt statistic TCPMD5Unexpected.  
-Type: gauge  

**node_netstat_TcpExt_TCPMTUPFail**  
-Description: Protocol TcpExt statistic TCPMTUPFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPMTUPSuccess**  
-Description: Protocol TcpExt statistic TCPMTUPSuccess.  
-Type: gauge  

**node_netstat_TcpExt_TCPMemoryPressures**  
-Description: Protocol TcpExt statistic TCPMemoryPressures.  
-Type: gauge  

**node_netstat_TcpExt_TCPMinTTLDrop**  
-Description: Protocol TcpExt statistic TCPMinTTLDrop.  
-Type: gauge  

**node_netstat_TcpExt_TCPOFODrop**  
-Description: Protocol TcpExt statistic TCPOFODrop.  
-Type: gauge  

**node_netstat_TcpExt_TCPOFOMerge**  
-Description: Protocol TcpExt statistic TCPOFOMerge.  
-Type: gauge  

**node_netstat_TcpExt_TCPOFOQueue**  
-Description: Protocol TcpExt statistic TCPOFOQueue.  
-Type: gauge  

**node_netstat_TcpExt_TCPOrigDataSent**  
-Description: Protocol TcpExt statistic TCPOrigDataSent.  
-Type: gauge  

**node_netstat_TcpExt_TCPPartialUndo**  
-Description: Protocol TcpExt statistic TCPPartialUndo.  
-Type: gauge  

**node_netstat_TcpExt_TCPPrequeueDropped**  
-Description: Protocol TcpExt statistic TCPPrequeueDropped.  
-Type: gauge  

**node_netstat_TcpExt_TCPPrequeued**  
-Description: Protocol TcpExt statistic TCPPrequeued.  
-Type: gauge  

**node_netstat_TcpExt_TCPPureAcks**  
-Description: Protocol TcpExt statistic TCPPureAcks.  
-Type: gauge  

**node_netstat_TcpExt_TCPRcvCoalesce**  
-Description: Protocol TcpExt statistic TCPRcvCoalesce.  
-Type: gauge  

**node_netstat_TcpExt_TCPRcvCollapsed**  
-Description: Protocol TcpExt statistic TCPRcvCollapsed.  
-Type: gauge  

**node_netstat_TcpExt_TCPRenoFailures**  
-Description: Protocol TcpExt statistic TCPRenoFailures.  
-Type: gauge  

**node_netstat_TcpExt_TCPRenoRecovery**  
-Description: Protocol TcpExt statistic TCPRenoRecovery.  
-Type: gauge  

**node_netstat_TcpExt_TCPRenoRecoveryFail**  
-Description: Protocol TcpExt statistic TCPRenoRecoveryFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPRenoReorder**  
-Description: Protocol TcpExt statistic TCPRenoReorder.  
-Type: gauge  

**node_netstat_TcpExt_TCPReqQFullDoCookies**  
-Description: Protocol TcpExt statistic TCPReqQFullDoCookies.  
-Type: gauge  

**node_netstat_TcpExt_TCPReqQFullDrop**  
-Description: Protocol TcpExt statistic TCPReqQFullDrop.  
-Type: gauge  

**node_netstat_TcpExt_TCPRetransFail**  
-Description: Protocol TcpExt statistic TCPRetransFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPSACKDiscard**  
-Description: Protocol TcpExt statistic TCPSACKDiscard.  
-Type: gauge  

**node_netstat_TcpExt_TCPSACKReneging**  
-Description: Protocol TcpExt statistic TCPSACKReneging.  
-Type: gauge  

**node_netstat_TcpExt_TCPSACKReorder**  
-Description: Protocol TcpExt statistic TCPSACKReorder.  
-Type: gauge  

**node_netstat_TcpExt_TCPSYNChallenge**  
-Description: Protocol TcpExt statistic TCPSYNChallenge.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackFailures**  
-Description: Protocol TcpExt statistic TCPSackFailures.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackMerged**  
-Description: Protocol TcpExt statistic TCPSackMerged.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackRecovery**  
-Description: Protocol TcpExt statistic TCPSackRecovery.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackRecoveryFail**  
-Description: Protocol TcpExt statistic TCPSackRecoveryFail.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackShiftFallback**  
-Description: Protocol TcpExt statistic TCPSackShiftFallback.  
-Type: gauge  

**node_netstat_TcpExt_TCPSackShifted**  
-Description: Protocol TcpExt statistic TCPSackShifted.  
-Type: gauge  

**node_netstat_TcpExt_TCPSchedulerFailed**  
-Description: Protocol TcpExt statistic TCPSchedulerFailed.  
-Type: gauge  

**node_netstat_TcpExt_TCPSlowStartRetrans**  
-Description: Protocol TcpExt statistic TCPSlowStartRetrans.  
-Type: gauge  

**node_netstat_TcpExt_TCPSpuriousRTOs**  
-Description: Protocol TcpExt statistic TCPSpuriousRTOs.  
-Type: gauge  

**node_netstat_TcpExt_TCPSpuriousRtxHostQueues**  
-Description: Protocol TcpExt statistic TCPSpuriousRtxHostQueues.  
-Type: gauge  

**node_netstat_TcpExt_TCPSynRetrans**  
-Description: Protocol TcpExt statistic TCPSynRetrans.  
-Type: gauge  

**node_netstat_TcpExt_TCPTSReorder**  
-Description: Protocol TcpExt statistic TCPTSReorder.  
-Type: gauge  

**node_netstat_TcpExt_TCPTimeWaitOverflow**  
-Description: Protocol TcpExt statistic TCPTimeWaitOverflow.  
-Type: gauge  

**node_netstat_TcpExt_TCPTimeouts**  
-Description: Protocol TcpExt statistic TCPTimeouts.  
-Type: gauge  

**node_netstat_TcpExt_TCPToZeroWindowAdv**  
-Description: Protocol TcpExt statistic TCPToZeroWindowAdv.  
-Type: gauge  

**node_netstat_TcpExt_TCPWantZeroWindowAdv**  
-Description: Protocol TcpExt statistic TCPWantZeroWindowAdv.  
-Type: gauge  

**node_netstat_TcpExt_TCPWinProbe**  
-Description: Protocol TcpExt statistic TCPWinProbe.  
-Type: gauge  

**node_netstat_TcpExt_TW**  
-Description: Protocol TcpExt statistic TW.  
-Type: gauge  

**node_netstat_TcpExt_TWKilled**  
-Description: Protocol TcpExt statistic TWKilled.  
-Type: gauge  

**node_netstat_TcpExt_TWRecycled**  
-Description: Protocol TcpExt statistic TWRecycled.  
-Type: gauge  

#### node_netstat_Tcp

**node_netstat_Tcp_ActiveOpens**  
-Description: Protocol Tcp statistic ActiveOpens.  
-Type: gauge  

**node_netstat_Tcp_AttemptFails**  
-Description: Protocol Tcp statistic AttemptFails.  
-Type: gauge  

**node_netstat_Tcp_CurrEstab**  
-Description: Protocol Tcp statistic CurrEstab.  
-Type: gauge  

**node_netstat_Tcp_EstabResets**  
-Description: Protocol Tcp statistic EstabResets.  
-Type: gauge  

**node_netstat_Tcp_InCsumErrors**  
-Description: Protocol Tcp statistic InCsumErrors.  
-Type: gauge  

**node_netstat_Tcp_InErrs**  
-Description: Protocol Tcp statistic InErrs.  
-Type: gauge  

**node_netstat_Tcp_InSegs**  
-Description: Protocol Tcp statistic InSegs.  
-Type: gauge  

**node_netstat_Tcp_MaxConn**  
-Description: Protocol Tcp statistic MaxConn.  
-Type: gauge  

**node_netstat_Tcp_OutRsts**  
-Description: Protocol Tcp statistic OutRsts.  
-Type: gauge  

**node_netstat_Tcp_OutSegs**  
-Description: Protocol Tcp statistic OutSegs.  
-Type: gauge  

**node_netstat_Tcp_PassiveOpens**  
-Description: Protocol Tcp statistic PassiveOpens.  
-Type: gauge  

**node_netstat_Tcp_RetransSegs**  
-Description: Protocol Tcp statistic RetransSegs.  
-Type: gauge  

**node_netstat_Tcp_RtoAlgorithm**  
-Description: Protocol Tcp statistic RtoAlgorithm.  
-Type: gauge  

**node_netstat_Tcp_RtoMax**  
-Description: Protocol Tcp statistic RtoMax.  
-Type: gauge  

**node_netstat_Tcp_RtoMin**  
-Description: Protocol Tcp statistic RtoMin.  
-Type: gauge  

#### node_netstat_UdpLite

**node_netstat_UdpLite_IgnoredMulti**  
-Description: Protocol UdpLite statistic IgnoredMulti.  
-Type: gauge  

**node_netstat_UdpLite_InCsumErrors**  
-Description: Protocol UdpLite statistic InCsumErrors.  
-Type: gauge  

**node_netstat_UdpLite_InDatagrams**  
-Description: Protocol UdpLite statistic InDatagrams.  
-Type: gauge  

**node_netstat_UdpLite_InErrors**  
-Description: Protocol UdpLite statistic InErrors.  
-Type: gauge  

**node_netstat_UdpLite_NoPorts**  
-Description: Protocol UdpLite statistic NoPorts.  
-Type: gauge  

**node_netstat_UdpLite_OutDatagrams**  
-Description: Protocol UdpLite statistic OutDatagrams.  
-Type: gauge  

**node_netstat_UdpLite_RcvbufErrors**  
-Description: Protocol UdpLite statistic RcvbufErrors.  
-Type: gauge  

**node_netstat_UdpLite_SndbufErrors**  
-Description: Protocol UdpLite statistic SndbufErrors.  
-Type: gauge  

#### node_netstat_Udp

**node_netstat_Udp_IgnoredMulti**  
-Description: Protocol Udp statistic IgnoredMulti.  
-Type: gauge  

**node_netstat_Udp_InCsumErrors**  
-Description: Protocol Udp statistic InCsumErrors.  
-Type: gauge  

**node_netstat_Udp_InDatagrams**  
-Description: Protocol Udp statistic InDatagrams.  
-Type: gauge  

**node_netstat_Udp_InErrors**  
-Description: Protocol Udp statistic InErrors.  
-Type: gauge  

**node_netstat_Udp_NoPorts**  
-Description: Protocol Udp statistic NoPorts.  
-Type: gauge  

**node_netstat_Udp_OutDatagrams**  
-Description: Protocol Udp statistic OutDatagrams.  
-Type: gauge  

**node_netstat_Udp_RcvbufErrors**  
-Description: Protocol Udp statistic RcvbufErrors.  
-Type: gauge  

**node_netstat_Udp_SndbufErrors**  
-Description: Protocol Udp statistic SndbufErrors.  
-Type: gauge  

### node_network

#### node_network_receive

**node_network_receive_bytes**  
-Description: Network device statistic receive_bytes.  
-Type: gauge  

**node_network_receive_compressed**  
-Description: Network device statistic receive_compressed.  
-Type: gauge  

**node_network_receive_drop**  
-Description: Network device statistic receive_drop.  
-Type: gauge  

**node_network_receive_errs**  
-Description: Network device statistic receive_errs.  
-Type: gauge  

**node_network_receive_fifo**  
-Description: Network device statistic receive_fifo.  
-Type: gauge  

**node_network_receive_frame**  
-Description: Network device statistic receive_frame.  
-Type: gauge  

**node_network_receive_multicast**  
-Description: Network device statistic receive_multicast.  
-Type: gauge  

**node_network_receive_packets**  
-Description: Network device statistic receive_packets.  
-Type: gauge  

#### node_network_transmit

**node_network_transmit_bytes**  
-Description: Network device statistic transmit_bytes.  
-Type: gauge  

**node_network_transmit_compressed**  
-Description: Network device statistic transmit_compressed.  
-Type: gauge  

**node_network_transmit_drop**  
-Description: Network device statistic transmit_drop.  
-Type: gauge  

**node_network_transmit_errs**  
-Description: Network device statistic transmit_errs.  
-Type: gauge  

**node_network_transmit_fifo**  
-Description: Network device statistic transmit_fifo.  
-Type: gauge  

**node_network_transmit_frame**  
-Description: Network device statistic transmit_frame.  
-Type: gauge  

**node_network_transmit_multicast**  
-Description: Network device statistic transmit_multicast.  
-Type: gauge  

**node_network_transmit_packets**  
-Description: Network device statistic transmit_packets.  
-Type: gauge  

### node_sockstat

#### node_sockstat_TCP

**node_sockstat_TCP_alloc**  
-Description: Number of TCP sockets in state alloc.  
-Type: gauge  

**node_sockstat_TCP_inuse**  
-Description: Number of TCP sockets in state inuse.  
-Type: gauge  

**node_sockstat_TCP_mem**  
-Description: Number of TCP sockets in state mem.  
-Type: gauge  

**node_sockstat_TCP_mem_bytes**  
-Description: Number of TCP sockets in state mem_bytes.  
-Type: gauge  

**node_sockstat_TCP_orphan**  
-Description: Number of TCP sockets in state orphan.  
-Type: gauge  

**node_sockstat_TCP_tw**  
-Description: Number of TCP sockets in state tw.  
-Type: gauge  

#### node_sockstat_UDP

**node_sockstat_UDPLITE_inuse**  
-Description: Number of UDPLITE sockets in state inuse.  
-Type: gauge  

**node_sockstat_UDP_inuse**  
-Description: Number of UDP sockets in state inuse.  
-Type: gauge  

**node_sockstat_UDP_mem**  
-Description: Number of UDP sockets in state mem.  
-Type: gauge  

**node_sockstat_UDP_mem_bytes**  
-Description: Number of UDP sockets in state mem_bytes.  
-Type: gauge  

#### node_sockstat_misc

**node_sockstat_FRAG_inuse**  
-Description: Number of FRAG sockets in state inuse.  
-Type: gauge  

**node_sockstat_FRAG_memory**  
-Description: Number of FRAG sockets in state memory.  
-Type: gauge  

**node_sockstat_RAW_inuse**  
-Description: Number of RAW sockets in state inuse.  
-Type: gauge  

**node_sockstat_sockets_used**  
-Description: Number of sockets sockets in state used.  
-Type: gauge  

#### node_vmstat

**node_vmstat_allocstall**  
-Description: /proc/vmstat information field allocstall.  
-Type: untyped  

**node_vmstat_balloon_deflate**  
-Description: /proc/vmstat information field balloon_deflate.  
-Type: untyped  

**node_vmstat_balloon_inflate**  
-Description: /proc/vmstat information field balloon_inflate.  
-Type: untyped  

**node_vmstat_balloon_migrate**  
-Description: /proc/vmstat information field balloon_migrate.  
-Type: untyped  

**node_vmstat_compact_fail**  
-Description: /proc/vmstat information field compact_fail.  
-Type: untyped  

**node_vmstat_compact_free_scanned**  
-Description: /proc/vmstat information field compact_free_scanned.  
-Type: untyped  

**node_vmstat_compact_isolated**  
-Description: /proc/vmstat information field compact_isolated.  
-Type: untyped  

**node_vmstat_compact_migrate_scanned**  
-Description: /proc/vmstat information field compact_migrate_scanned.  
-Type: untyped  

**node_vmstat_compact_stall**  
-Description: /proc/vmstat information field compact_stall.  
-Type: untyped  

**node_vmstat_compact_success**  
-Description: /proc/vmstat information field compact_success.  
-Type: untyped  

**node_vmstat_drop_pagecache**  
-Description: /proc/vmstat information field drop_pagecache.  
-Type: untyped  

**node_vmstat_drop_slab**  
-Description: /proc/vmstat information field drop_slab.  
-Type: untyped  

**node_vmstat_htlb_buddy_alloc_fail**  
-Description: /proc/vmstat information field htlb_buddy_alloc_fail.  
-Type: untyped  

**node_vmstat_htlb_buddy_alloc_success**  
-Description: /proc/vmstat information field htlb_buddy_alloc_success.  
-Type: untyped  

**node_vmstat_kswapd_high_wmark_hit_quickly**  
-Description: /proc/vmstat information field kswapd_high_wmark_hit_quickly.  
-Type: untyped  

**node_vmstat_kswapd_inodesteal**  
-Description: /proc/vmstat information field kswapd_inodesteal.  
-Type: untyped  

**node_vmstat_kswapd_low_wmark_hit_quickly**  
-Description: /proc/vmstat information field kswapd_low_wmark_hit_quickly.  
-Type: untyped  

**node_vmstat_nr_active_anon**  
-Description: /proc/vmstat information field nr_active_anon.  
-Type: untyped  

**node_vmstat_nr_active_file**  
-Description: /proc/vmstat information field nr_active_file.  
-Type: untyped  

**node_vmstat_nr_alloc_batch**  
-Description: /proc/vmstat information field nr_alloc_batch.  
-Type: untyped  

**node_vmstat_nr_anon_pages**  
-Description: /proc/vmstat information field nr_anon_pages.  
-Type: untyped  

**node_vmstat_nr_anon_transparent_hugepages**  
-Description: /proc/vmstat information field nr_anon_transparent_hugepages.  
-Type: untyped  

**node_vmstat_nr_bounce**  
-Description: /proc/vmstat information field nr_bounce.  
-Type: untyped  

**node_vmstat_nr_dirtied**  
-Description: /proc/vmstat information field nr_dirtied.  
-Type: untyped  

**node_vmstat_nr_dirty**  
-Description: /proc/vmstat information field nr_dirty.  
-Type: untyped  

**node_vmstat_nr_dirty_background_threshold**  
-Description: /proc/vmstat information field nr_dirty_background_threshold.  
-Type: untyped  

**node_vmstat_nr_dirty_threshold**  
-Description: /proc/vmstat information field nr_dirty_threshold.  
-Type: untyped  

**node_vmstat_nr_file_pages**  
-Description: /proc/vmstat information field nr_file_pages.  
-Type: untyped  

**node_vmstat_nr_free_cma**  
-Description: /proc/vmstat information field nr_free_cma.  
-Type: untyped  

**node_vmstat_nr_free_pages**  
-Description: /proc/vmstat information field nr_free_pages.  
-Type: untyped  

**node_vmstat_nr_inactive_anon**  
-Description: /proc/vmstat information field nr_inactive_anon.  
-Type: untyped  

**node_vmstat_nr_inactive_file**  
-Description: /proc/vmstat information field nr_inactive_file.  
-Type: untyped  

**node_vmstat_nr_isolated_anon**  
-Description: /proc/vmstat information field nr_isolated_anon.  
-Type: untyped  

**node_vmstat_nr_isolated_file**  
-Description: /proc/vmstat information field nr_isolated_file.  
-Type: untyped  

**node_vmstat_nr_kernel_stack**  
-Description: /proc/vmstat information field nr_kernel_stack.  
-Type: untyped  

**node_vmstat_nr_mapped**  
-Description: /proc/vmstat information field nr_mapped.  
-Type: untyped  

**node_vmstat_nr_mlock**  
-Description: /proc/vmstat information field nr_mlock.  
-Type: untyped  

**node_vmstat_nr_page_table_pages**  
-Description: /proc/vmstat information field nr_page_table_pages.  
-Type: untyped  

**node_vmstat_nr_pages_scanned**  
-Description: /proc/vmstat information field nr_pages_scanned.  
-Type: untyped  

**node_vmstat_nr_shmem**  
-Description: /proc/vmstat information field nr_shmem.  
-Type: untyped  

**node_vmstat_nr_slab_reclaimable**  
-Description: /proc/vmstat information field nr_slab_reclaimable.  
-Type: untyped  

**node_vmstat_nr_slab_unreclaimable**  
-Description: /proc/vmstat information field nr_slab_unreclaimable.  
-Type: untyped  

**node_vmstat_nr_unevictable**  
-Description: /proc/vmstat information field nr_unevictable.  
-Type: untyped  

**node_vmstat_nr_unstable**  
-Description: /proc/vmstat information field nr_unstable.  
-Type: untyped  

**node_vmstat_nr_vmscan_immediate_reclaim**  
-Description: /proc/vmstat information field nr_vmscan_immediate_reclaim.  
-Type: untyped  

**node_vmstat_nr_vmscan_write**  
-Description: /proc/vmstat information field nr_vmscan_write.  
-Type: untyped  

**node_vmstat_nr_writeback**  
-Description: /proc/vmstat information field nr_writeback.  
-Type: untyped  

**node_vmstat_nr_writeback_temp**  
-Description: /proc/vmstat information field nr_writeback_temp.  
-Type: untyped  

**node_vmstat_nr_written**  
-Description: /proc/vmstat information field nr_written.  
-Type: untyped  

**node_vmstat_pageoutrun**  
-Description: /proc/vmstat information field pageoutrun.  
-Type: untyped  

**node_vmstat_pgactivate**  
-Description: /proc/vmstat information field pgactivate.  
-Type: untyped  

**node_vmstat_pgalloc_dma**  
-Description: /proc/vmstat information field pgalloc_dma.  
-Type: untyped  

**node_vmstat_pgalloc_dma32**  
-Description: /proc/vmstat information field pgalloc_dma32.  
-Type: untyped  

**node_vmstat_pgalloc_movable**  
-Description: /proc/vmstat information field pgalloc_movable.  
-Type: untyped  

**node_vmstat_pgalloc_normal**  
-Description: /proc/vmstat information field pgalloc_normal.  
-Type: untyped  

**node_vmstat_pgdeactivate**  
-Description: /proc/vmstat information field pgdeactivate.  
-Type: untyped  

**node_vmstat_pgfault**  
-Description: /proc/vmstat information field pgfault.  
-Type: untyped  

**node_vmstat_pgfree**  
-Description: /proc/vmstat information field pgfree.  
-Type: untyped  

**node_vmstat_pginodesteal**  
-Description: /proc/vmstat information field pginodesteal.  
-Type: untyped  

**node_vmstat_pgmajfault**  
-Description: /proc/vmstat information field pgmajfault.  
-Type: untyped  

**node_vmstat_pgmigrate_fail**  
-Description: /proc/vmstat information field pgmigrate_fail.  
-Type: untyped  

**node_vmstat_pgmigrate_success**  
-Description: /proc/vmstat information field pgmigrate_success.  
-Type: untyped  

**node_vmstat_pgpgin**  
-Description: /proc/vmstat information field pgpgin.  
-Type: untyped  

**node_vmstat_pgpgout**  
-Description: /proc/vmstat information field pgpgout.  
-Type: untyped  

**node_vmstat_pgrefill_dma**  
-Description: /proc/vmstat information field pgrefill_dma.  
-Type: untyped  

**node_vmstat_pgrefill_dma32**  
-Description: /proc/vmstat information field pgrefill_dma32.  
-Type: untyped  

**node_vmstat_pgrefill_movable**  
-Description: /proc/vmstat information field pgrefill_movable.  
-Type: untyped  

**node_vmstat_pgrefill_normal**  
-Description: /proc/vmstat information field pgrefill_normal.  
-Type: untyped  

**node_vmstat_pgrotated**  
-Description: /proc/vmstat information field pgrotated.  
-Type: untyped  

**node_vmstat_pgscan_direct_dma**  
-Description: /proc/vmstat information field pgscan_direct_dma.  
-Type: untyped  

**node_vmstat_pgscan_direct_dma32**  
-Description: /proc/vmstat information field pgscan_direct_dma32.  
-Type: untyped  

**node_vmstat_pgscan_direct_movable**  
-Description: /proc/vmstat information field pgscan_direct_movable.  
-Type: untyped  

**node_vmstat_pgscan_direct_normal**  
-Description: /proc/vmstat information field pgscan_direct_normal.  
-Type: untyped  

**node_vmstat_pgscan_direct_throttle**  
-Description: /proc/vmstat information field pgscan_direct_throttle.  
-Type: untyped  

**node_vmstat_pgscan_kswapd_dma**  
-Description: /proc/vmstat information field pgscan_kswapd_dma.  
-Type: untyped  

**node_vmstat_pgscan_kswapd_dma32**  
-Description: /proc/vmstat information field pgscan_kswapd_dma32.  
-Type: untyped  

**node_vmstat_pgscan_kswapd_movable**  
-Description: /proc/vmstat information field pgscan_kswapd_movable.  
-Type: untyped  

**node_vmstat_pgscan_kswapd_normal**  
-Description: /proc/vmstat information field pgscan_kswapd_normal.  
-Type: untyped  

**node_vmstat_pgsteal_direct_dma**  
-Description: /proc/vmstat information field pgsteal_direct_dma.  
-Type: untyped  

**node_vmstat_pgsteal_direct_dma32**  
-Description: /proc/vmstat information field pgsteal_direct_dma32.  
-Type: untyped  

**node_vmstat_pgsteal_direct_movable**  
-Description: /proc/vmstat information field pgsteal_direct_movable.  
-Type: untyped  

**node_vmstat_pgsteal_direct_normal**  
-Description: /proc/vmstat information field pgsteal_direct_normal.  
-Type: untyped  

**node_vmstat_pgsteal_kswapd_dma**  
-Description: /proc/vmstat information field pgsteal_kswapd_dma.  
-Type: untyped  

**node_vmstat_pgsteal_kswapd_dma32**  
-Description: /proc/vmstat information field pgsteal_kswapd_dma32.  
-Type: untyped  

**node_vmstat_pgsteal_kswapd_movable**  
-Description: /proc/vmstat information field pgsteal_kswapd_movable.  
-Type: untyped  

**node_vmstat_pgsteal_kswapd_normal**  
-Description: /proc/vmstat information field pgsteal_kswapd_normal.  
-Type: untyped  

**node_vmstat_pswpin**  
-Description: /proc/vmstat information field pswpin.  
-Type: untyped  

**node_vmstat_pswpout**  
-Description: /proc/vmstat information field pswpout.  
-Type: untyped  

**node_vmstat_slabs_scanned**  
-Description: /proc/vmstat information field slabs_scanned.  
-Type: untyped  

**node_vmstat_thp_collapse_alloc**  
-Description: /proc/vmstat information field thp_collapse_alloc.  
-Type: untyped  

**node_vmstat_thp_collapse_alloc_failed**  
-Description: /proc/vmstat information field thp_collapse_alloc_failed.  
-Type: untyped  

**node_vmstat_thp_fault_alloc**  
-Description: /proc/vmstat information field thp_fault_alloc.  
-Type: untyped  

**node_vmstat_thp_fault_fallback**  
-Description: /proc/vmstat information field thp_fault_fallback.  
-Type: untyped  

**node_vmstat_thp_split**  
-Description: /proc/vmstat information field thp_split.  
-Type: untyped  

**node_vmstat_thp_zero_page_alloc**  
-Description: /proc/vmstat information field thp_zero_page_alloc.  
-Type: untyped  

**node_vmstat_thp_zero_page_alloc_failed**  
-Description: /proc/vmstat information field thp_zero_page_alloc_failed.  
-Type: untyped  

**node_vmstat_unevictable_pgs_cleared**  
-Description: /proc/vmstat information field unevictable_pgs_cleared.  
-Type: untyped  

**node_vmstat_unevictable_pgs_culled**  
-Description: /proc/vmstat information field unevictable_pgs_culled.  
-Type: untyped  

**node_vmstat_unevictable_pgs_mlocked**  
-Description: /proc/vmstat information field unevictable_pgs_mlocked.  
-Type: untyped  

**node_vmstat_unevictable_pgs_munlocked**  
-Description: /proc/vmstat information field unevictable_pgs_munlocked.  
-Type: untyped  

**node_vmstat_unevictable_pgs_rescued**  
-Description: /proc/vmstat information field unevictable_pgs_rescued.  
-Type: untyped  

**node_vmstat_unevictable_pgs_scanned**  
-Description: /proc/vmstat information field unevictable_pgs_scanned.  
-Type: untyped  

**node_vmstat_unevictable_pgs_stranded**  
-Description: /proc/vmstat information field unevictable_pgs_stranded.  
-Type: untyped  

**node_vmstat_workingset_activate**  
-Description: /proc/vmstat information field workingset_activate.  
-Type: untyped  

**node_vmstat_workingset_nodereclaim**  
-Description: /proc/vmstat information field workingset_nodereclaim.  
-Type: untyped  

**node_vmstat_workingset_refault**  
-Description: /proc/vmstat information field workingset_refault.  
-Type: untyped  

### node_misc

**node_boot_time**  
-Description: Node boot time, in unixtime.  
-Type: gauge  

**node_context_switches**  
-Description: Total number of context switches.  
-Type: counter  

**node_cpu**  
-Description: Seconds the cpus spent in each mode.  
-Type: counter  

**node_entropy_available_bits**  
-Description: Bits of available entropy.  
-Type: gauge  

**node_exporter_build_info**  
-Description: A metric with a constant '1' value labeled by version, revision, branch, and goversion from which node_exporter was built.  
-Type: gauge  

**node_exporter_scrape_duration_seconds**  
-Description: node_exporter: Duration of a scrape job.  
-Type: summary  

**node_filefd_allocated**  
-Description: File descriptor statistics: allocated.  
-Type: gauge  

**node_filefd_maximum**  
-Description: File descriptor statistics: maximum.  
-Type: gauge  

**node_forks**  
-Description: Total number of forks.  
-Type: counter  

**node_intr**  
-Description: Total number of interrupts serviced.  
-Type: counter  

**node_load1**  
-Description: 1m load average.  
-Type: gauge  

**node_load15**  
-Description: 15m load average.  
-Type: gauge  

**node_load5**  
-Description: 5m load average.  
-Type: gauge  

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

**node_nf_conntrack_entries**  
-Description: Number of currently allocated flow entries for connection tracking.  
-Type: gauge  

**node_nf_conntrack_entries_limit**  
-Description: Maximum size of connection tracking table.  
-Type: gauge  

**node_procs_blocked**  
-Description: Number of processes blocked waiting for I/O to complete.  
-Type: gauge  

**node_procs_running**  
-Description: Number of processes in runnable state.  
-Type: gauge  

**node_time**  
-Description: System time in seconds since epoch (1970).  
-Type: counter  

**node_uname_info**  
-Description: Labeled system information as provided by the uname system call.  
-Type: gauge  
