module "mongo" {
  source         = "../.."
  product_domain = "BEI"
  service        = "beical"
  cluster        = "beical-mongod"
  environment    = "production"

  recipients = ["slack-bei", "pagerduty-bei", "bei@traveloka.com"]
}
