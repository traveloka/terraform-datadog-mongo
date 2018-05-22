module "curr_op_5s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Current Operation 5s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_5s{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.curr_op_5s_thresholds}"
  message            = "${var.curr_op_5s_message}"
  escalation_message = "${var.curr_op_5s_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "curr_op_15s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Current Operation 15s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_15s{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.curr_op_15s_thresholds}"
  message            = "${var.curr_op_15s_message}"
  escalation_message = "${var.curr_op_15s_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "curr_op_30s" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Current Operation 30s is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "max(last_1m):max:custom.mongodb.curr_op_30s{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.curr_op_30s_thresholds}"
  message            = "${var.curr_op_30s_message}"
  escalation_message = "${var.curr_op_30s_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "page_faultsps" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Page Fault Per Second is High : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.extra_info.page_faultsps{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.page_faultsps_thresholds}"
  message            = "${var.page_faultsps_message}"
  escalation_message = "${var.page_faultsps_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "queue_read" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Queue Read is High on IP : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.globallock.currentqueue.readers{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.queue_read_thresholds}"
  message            = "${var.queue_read_message}"
  escalation_message = "${var.queue_read_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}

module "queue_write" {
  source  = "github.com/traveloka/terraform-datadog-monitor"
  enabled = "${var.enabled}"

  product_domain = "${var.product_domain}"
  service        = "${var.service}"

  name               = "${var.product_domain} - ${var.cluster} - Queue Write is High on IP : {{ host.ip }} Name: {{ host.name }}"
  query              = "avg(last_1m):sum:mongodb.globallock.currentqueue.writers{cluster: ${var.cluster}} by {name}"
  thresholds         = "${var.queue_write_thresholds}"
  message            = "${var.queue_write_message}"
  escalation_message = "${var.queue_write_escalation_message}"

  recipients = "${var.recipients}"

  renotify_interval = "${var.renotify_interval}"
  notify_audit      = "${var.notify_audit}"
}
