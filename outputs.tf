output "timeboard_title" {
  value       = "${join(",", datadog_timeboard.mongo.*.title)}"
  description = "The title of datadog timeboard for Mongo"
}

output "monitor_curr_op_5s_name" {
  value       = "${module.monitor_curr_op_5s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 5s"
}

output "monitor_curr_op_15s_name" {
  value       = "${module.monitor_curr_op_15s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 15s"
}

output "monitor_curr_op_30s_name" {
  value       = "${module.monitor_curr_op_30s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 30s"
}

output "monitor_page_faultsps_name" {
  value       = "${module.monitor_page_faultsps.name}"
  description = "The name of datadog monitor for Mongo Page Faults Per Second"
}

output "monitor_queue_read_name" {
  value       = "${module.monitor_queue_read.name}"
  description = "The name of datadog monitor for Mongo Queue Read"
}

output "monitor_queue_write_name" {
  value       = "${module.monitor_queue_write.name}"
  description = "The name of datadog monitor for Mongo Queue Write"
}
