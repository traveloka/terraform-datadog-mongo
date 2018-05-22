module "beical_mongod_monitor" {
  source         = "../.."
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-mongod"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
