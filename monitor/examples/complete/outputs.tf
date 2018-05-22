output "beical_mongod_monitor_mongo_curr_op_5s_name" {
  value       = "${module.beical_mongod_monitor.curr_op_5s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 5s"
}

output "beical_mongod_monitor_mongo_curr_op_15s_name" {
  value       = "${module.beical_mongod_monitor.curr_op_15s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 15s"
}

output "beical_mongod_monitor_mongo_curr_op_30s_name" {
  value       = "${module.beical_mongod_monitor.curr_op_30s_name}"
  description = "The name of datadog monitor for Mongo Current Operation 30s"
}

output "beical_mongod_monitor_mongo_page_faultsps_name" {
  value       = "${module.beical_mongod_monitor.page_faultsps_name}"
  description = "The name of datadog monitor for Mongo Page Faults Per Second"
}

output "beical_mongod_monitor_mongo_queue_read_name" {
  value       = "${module.beical_mongod_monitor.queue_read_name}"
  description = "The name of datadog monitor for Mongo Queue Read"
}

output "beical_mongod_monitor_mongo_queue_write_name" {
  value       = "${module.beical_mongod_monitor.queue_write_name}"
  description = "The name of datadog monitor for Mongo Queue Write"
}
