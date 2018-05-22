#########
# MONGO #
#########

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

##########
# SYSTEM #
##########
output "beical_mongod_monitor_system_cpu_usage_name" {
  value       = "${module.beical_mongod_monitor.system_cpu_usage_name}"
  description = "The name of datadog monitor for CPU Usage"
}

output "beical_mongod_monitor_system_disk_usage_name" {
  value       = "${module.beical_mongod_monitor.system_disk_usage_name}"
  description = "The name of datadog monitor for Disk Usage"
}

output "beical_mongod_monitor_system_memory_free_name" {
  value       = "${module.beical_mongod_monitor.system_memory_free_name}"
  description = "The name of datadog monitor for Free Memory"
}

output "beical_mongod_monitor_system_network_in_name" {
  value       = "${module.beical_mongod_monitor.system_network_in_name}"
  description = "The name of datadog monitor for Network In"
}

output "beical_mongod_monitor_system_network_out_name" {
  value       = "${module.beical_mongod_monitor.system_network_out_name}"
  description = "The name of datadog monitor for Network Out"
}

output "beical_mongod_monitor_system_open_file_name" {
  value       = "${module.beical_mongod_monitor.system_open_file_name}"
  description = "The name of datadog monitor for Open File"
}

output "beical_mongod_monitor_system_load_name" {
  value       = "${module.beical_mongod_monitor.system_load_name}"
  description = "The name of datadog monitor for System Load"
}
