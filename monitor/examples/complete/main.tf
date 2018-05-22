module "beical_mongod_monitor" {
  source         = "../.."
  product_domain = "BEI"
  service        = "beical"
  cluster        = "ppsdata-mongod"

  recipients        = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
  renotify_interval = 0
  notify_audit      = false

  #########
  # MONGO #
  #########
  curr_op_5s_thresholds = {
    critical = 10
    warning  = 5
  }

  curr_op_5s_message            = "Monitor is triggered"
  curr_op_5s_escalation_message = "Monitor isn't resolved for given interval"

  curr_op_15s_thresholds = {
    critical = 4
    warning  = 2
  }

  curr_op_15s_message            = "Monitor is triggered"
  curr_op_15s_escalation_message = "Monitor isn't resolved for given interval"

  curr_op_30s_thresholds = {
    critical = 2
    warning  = 1
  }

  curr_op_30s_message            = "Monitor is triggered"
  curr_op_30s_escalation_message = "Monitor isn't resolved for given interval"

  page_faultsps_thresholds = {
    critical = 500
    warning  = 250
  }

  page_faultsps_message            = "Monitor is triggered"
  page_faultsps_escalation_message = "Monitor isn't resolved for given interval"

  queue_read_thresholds = {
    critical = 250
    warning  = 100
  }

  queue_read_message            = "Monitor is triggered"
  queue_read_escalation_message = "Monitor isn't resolved for given interval"

  queue_write_thresholds = {
    critical = 75
    warning  = 50
  }

  queue_write_message            = "Monitor is triggered"
  queue_write_escalation_message = "Monitor isn't resolved for given interval"

  ##########
  # SYSTEM #
  ##########
  system_cpu_usage_thresholds = {
    critical = 70
    warning  = 50
  }

  system_cpu_usage_message            = "Monitor is triggered"
  system_cpu_usage_escalation_message = "Monitor isn't resolved for given interval"

  system_disk_usage_thresholds = {
    critical = 70
    warning  = 60
  }

  system_disk_usage_message            = "Monitor is triggered"
  system_disk_usage_escalation_message = "Monitor isn't resolved for given interval"

  system_memory_free_thresholds = {
    critical = 1000000000
    warning  = 1500000000
  }

  system_memory_free_message            = "Monitor is triggered"
  system_memory_free_escalation_message = "Monitor isn't resolved for given interval"

  system_network_in_thresholds = {
    critical = 30000000
    warning  = 20000000
  }

  system_network_in_message            = "Monitor is triggered"
  system_network_in_escalation_message = "Monitor isn't resolved for given interval"

  system_network_out_thresholds = {
    critical = 30000000
    warning  = 20000000
  }

  system_network_out_message            = "Monitor is triggered"
  system_network_out_escalation_message = "Monitor isn't resolved for given interval"

  system_open_file_thresholds = {
    critical = 4000
    warning  = 3000
  }

  system_open_file_message            = "Monitor is triggered"
  system_open_file_escalation_message = "Monitor isn't resolved for given interval"

  system_load_thresholds = {
    critical = 3
    warning  = 2
  }

  system_load_message            = "Monitor is triggered"
  system_load_escalation_message = "Monitor isn't resolved for given interval"
}
