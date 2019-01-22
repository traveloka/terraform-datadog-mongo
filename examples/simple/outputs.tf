output "timeboard_title" {
  value = "${module.mongo.timeboard_title}"
}

output "monitor_curr_op_5s_name" {
  value       = "${module.mongo.monitor_curr_op_5s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 5s"
}

output "monitor_curr_op_15s_name" {
  value       = "${module.mongo.monitor_curr_op_15s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 15s"
}

output "monitor_curr_op_30s_name" {
  value       = "${module.mongo.monitor_curr_op_30s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 30s"
}

output "monitor_page_faultsps_name" {
  value       = "${module.mongo.monitor_page_faultsps_name}"
  description = "The name of datadog monitor for Mongo Page Faults Per Second"
}

output "monitor_queue_read_name" {
  value       = "${module.mongo.monitor_queue_read_name}"
  description = "The name of datadog monitor for Mongo Queue Read"
}

output "monitor_queue_write_name" {
  value       = "${module.mongo.monitor_queue_write_name}"
  description = "The name of datadog monitor for Mongo Queue Write"
}

output "monitor_bytes_in_cache_name" {
  value       = "${module.mongo.monitor_bytes_in_cache_name}"
  description = "The name of datadog monitor for Mongo Bytes in Cache Percentage"
}
