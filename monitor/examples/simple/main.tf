module "beical_mongod_monitor" {
  source         = "../.."
  product_domain = "BEI"
  service        = "beical"
  cluster        = "ppsdata-mongod"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]

  ##########
  # SYSTEM #
  ##########
  system_memory_free_thresholds = {
    critical = 1000000000
    warning  = 1500000000
  }

  system_network_in_thresholds = {
    critical = 30000000
    warning  = 20000000
  }

  system_network_out_thresholds = {
    critical = 30000000
    warning  = 20000000
  }

  system_open_file_thresholds = {
    critical = 4000
    warning  = 3000
  }

  system_load_thresholds = {
    critical = 3
    warning  = 2
  }
}
