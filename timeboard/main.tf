resource "datadog_timeboard" "mongo" {
  title       = "${var.product_domain} - ${var.cluster} - Mongo"
  description = "A generated timeboard for Mongo"

  template_variable {
    default = "${var.cluster}"
    name    = "cluster"
    prefix  = "cluster"
  }

  graph {
    title     = "CPU Utilization (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "100 - avg:system.cpu.idle{$cluster} by {name}.rollup(min)"
      type = "line"
    }
  }

  graph {
    title     = "System Load - 1 Minute (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.load.1{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Free Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "max:system.mem.free{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Total Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "max:system.mem.total{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Free Disk"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.disk.free{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Read Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.rkb_s{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Write Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.wkb_s{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Average Disk Queued Operations"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.avg_q_sz{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Read Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.io.r_await{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Write Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.io.w_await{$cluster} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Network Bytes In (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.net.bytes_rcvd{$cluster,device:eth0} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Network Bytes Out (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.net.bytes_sent{$cluster,device:eth0} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queries (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.queryps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Getmores (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.getmoreps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Commands (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.commandps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Inserts (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.insertps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Updates (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.updateps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Deletes (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.deleteps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queue Read (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.globallock.currentqueue.readers{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queue Write (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.globallock.currentqueue.writers{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Faults (Rollup: max))"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.extra_info.page_faultsps{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Global Locks % (pre 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "per_minute(avg:mongodb.globallock.locktime{$cluster} by {name}) / 600000"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Replica States"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.replset.state{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Replication Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.replset.replicationlag{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Oplog Size (Time)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.oplog.timediff{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 5s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_5s{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 15s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_15s{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 30s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_30s{$cluster} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Current Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.connections.current{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Available Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.connections.available{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Data Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.datasize{$cluster} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo File Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.filesize{$cluster} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Index Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.indexsize{$cluster} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Storage Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.storagesize{$cluster} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Num Extents"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.numextents{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Bytes in Cache (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.cache.bytes_currently_in_cache{mongo-cluster:payment-mongod} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Dirty Bytes in Cache (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.cache.tracked_dirty_bytes_in_cache{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Evicted Pages (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.cache.modified_pages_evicted{$cluster} by {name} + avg:mongodb.wiredtiger.cache.unmodified_pages_evicted{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Write Tickets (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.write.available{$cluster} by {name}"
      type = "line"
    }

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.write.out{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Read Tickets (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.read.available{$cluster} by {name}"
      type = "line"
    }

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.read.out{$cluster} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Resident Memory (pre 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.mem.resident{$cluster} by {name}"
      type = "line"
    }
  }
}
