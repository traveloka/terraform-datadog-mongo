locals {
  monitor_enabled = "${var.enabled && length(var.recipients) > 0 ? 1 : 0}"
}

resource "datadog_timeboard" "mongo" {
  count = "${var.enabled}"

  title       = "${var.product_domain} - ${var.cluster} - ${var.environment} - Mongo"
  description = "A generated timeboard for Mongo"

  template_variable {
    default = "${var.cluster}"
    name    = "cluster"
    prefix  = "cluster"
  }

  template_variable {
    default = "${var.environment}"
    name    = "environment"
    prefix  = "environment"
  }

  graph {
    title     = "CPU Utilization (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "100 - avg:system.cpu.idle{$cluster, $environment} by {name}.rollup(min)"
      type = "line"
    }
  }

  graph {
    title     = "System Load - 1 Minute (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.load.1{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Free Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "max:system.mem.free{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Total Memory"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "max:system.mem.total{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Free Disk"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.disk.free{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Read Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.rkb_s{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Write Throughput"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.wkb_s{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Average Disk Queued Operations"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "sum:system.io.avg_q_sz{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Read Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.io.r_await{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Disk Write Latency"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.io.w_await{$cluster, $environment} by {name,device}"
      type = "line"
    }
  }

  graph {
    title     = "Network Bytes In (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.net.bytes_rcvd{$cluster, $environment,device:eth0} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Network Bytes Out (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:system.net.bytes_sent{$cluster, $environment,device:eth0} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queries (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.queryps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Getmores (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.getmoreps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Commands (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.commandps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Inserts (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.insertps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Updates (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.updateps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Deletes (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.opcounters.deleteps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queue Read (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.globallock.currentqueue.readers{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Queue Write (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.globallock.currentqueue.writers{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Faults (Rollup: max))"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.extra_info.page_faultsps{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Global Locks % (pre 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "per_minute(avg:mongodb.globallock.locktime{$cluster, $environment} by {name}) / 600000"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Replica States"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.replset.state{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Replication Lag"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.replset.replicationlag{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Oplog Size (Time)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.oplog.timediff{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 5s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_5s{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 15s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_15s{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo CurrOp 30s (Rollup: max)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:custom.mongodb.curr_op_30s{$cluster, $environment} by {name}.rollup(max)"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Current Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.connections.current{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Available Connections"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.connections.available{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Data Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.datasize{$cluster, $environment} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo File Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.filesize{$cluster, $environment} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Index Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.indexsize{$cluster, $environment} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Storage Size"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.storagesize{$cluster, $environment} by {name,cluster}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Num Extents"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.stats.numextents{$cluster, $environment} by {name}"
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
      q    = "avg:mongodb.wiredtiger.cache.tracked_dirty_bytes_in_cache{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Evicted Pages (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.cache.modified_pages_evicted{$cluster, $environment} by {name} + avg:mongodb.wiredtiger.cache.unmodified_pages_evicted{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Write Tickets (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.write.available{$cluster, $environment} by {name}"
      type = "line"
    }

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.write.out{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Read Tickets (post 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.read.available{$cluster, $environment} by {name}"
      type = "line"
    }

    request {
      q    = "avg:mongodb.wiredtiger.concurrenttransactions.read.out{$cluster, $environment} by {name}"
      type = "line"
    }
  }

  graph {
    title     = "Mongo Resident Memory (pre 3.0)"
    viz       = "timeseries"
    autoscale = true

    request {
      q    = "avg:mongodb.mem.resident{$cluster, $environment} by {name}"
      type = "line"
    }
  }
}

module "monitor_curr_op_5s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Current Operation 5s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_5s{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.curr_op_5s_thresholds["critical"]}"
  thresholds         = "${var.curr_op_5s_thresholds}"
  message            = "${var.curr_op_5s_message}"
  escalation_message = "${var.curr_op_5s_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_curr_op_15s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Current Operation 15s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_15s{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.curr_op_15s_thresholds["critical"]}"
  thresholds         = "${var.curr_op_15s_thresholds}"
  message            = "${var.curr_op_15s_message}"
  escalation_message = "${var.curr_op_15s_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_curr_op_30s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Current Operation 30s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_30s{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.curr_op_30s_thresholds["critical"]}"
  thresholds         = "${var.curr_op_30s_thresholds}"
  message            = "${var.curr_op_30s_message}"
  escalation_message = "${var.curr_op_30s_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_page_faultsps" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Page Fault Per Second is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.extra_info.page_faultsps{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.page_faultsps_thresholds["critical"]}"
  thresholds         = "${var.page_faultsps_thresholds}"
  message            = "${var.page_faultsps_message}"
  escalation_message = "${var.page_faultsps_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_queue_read" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Queue Read is High on IP : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.globallock.currentqueue.readers{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.queue_read_thresholds["critical"]}"
  thresholds         = "${var.queue_read_thresholds}"
  message            = "${var.queue_read_message}"
  escalation_message = "${var.queue_read_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "monitor_queue_write" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${local.monitor_enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"
  environment    = "${var.environment}"
  tags           = "${var.tags}"
  timeboard_id   = "${join(",", datadog_timeboard.mongo.*.id)}"

  name               = "${var.product_domain} - ${var.cluster} - ${var.environment} - Queue Write is High on IP : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.globallock.currentqueue.writers{cluster: ${var.cluster}, environment:${var.environment}} by {name} >= ${var.queue_write_thresholds["critical"]}"
  thresholds         = "${var.queue_write_thresholds}"
  message            = "${var.queue_write_message}"
  escalation_message = "${var.queue_write_escalation_message}"

  recipients         = "${var.recipients}"
  alert_recipients   = "${var.alert_recipients}"
  warning_recipients = "${var.warning_recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}
