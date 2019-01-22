module "mongo" {
  source         = "../.."
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-mongod"
  environment    = "production"
  tags           = ["tag1", "tag2"]

  recipients         = ["bei@traveloka.com"]
  alert_recipients   = ["pagerduty-bei"]
  warning_recipients = ["slack-bei"]
  renotify_interval  = 0
  notify_audit       = false

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

  bytes_in_cache_thresholds = {
    critical = 85
    warning  = 80
  }

  bytes_in_cache_message            = "Monitor is triggered"
  bytes_in_cache_escalation_message = "Monitor isn't resolved for given interval"
}
