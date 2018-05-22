#########
# MONGO #
#########
output "curr_op_5s_name" {
  value       = "${module.curr_op_5s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 5s"
}

output "curr_op_15s_name" {
  value       = "${module.curr_op_15s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 15s"
}

output "curr_op_30s_name" {
  value       = "${module.curr_op_30s.name}"
  description = "The name of datadog monitor for Mongo Current Operation 30s"
}

output "page_faultsps_name" {
  value       = "${module.page_faultsps.name}"
  description = "The name of datadog monitor for Mongo Page Faults Per Second"
}

output "queue_read_name" {
  value       = "${module.queue_read.name}"
  description = "The name of datadog monitor for Mongo Queue Read"
}

output "queue_write_name" {
  value       = "${module.queue_write.name}"
  description = "The name of datadog monitor for Mongo Queue Write"
}

##########
# SYSTEM #
##########
output "system_cpu_usage_name" {
  value       = "${module.system.cpu_usage_name}"
  description = "The name of datadog monitor for CPU Usage"
}

output "system_disk_usage_name" {
  value       = "${module.system.disk_usage_name}"
  description = "The name of datadog monitor for Disk Usage"
}

output "system_memory_free_name" {
  value       = "${module.system.memory_free_name}"
  description = "The name of datadog monitor for Free Memory"
}

output "system_network_in_name" {
  value       = "${module.system.network_in_name}"
  description = "The name of datadog monitor for Network In"
}

output "system_network_out_name" {
  value       = "${module.system.network_out_name}"
  description = "The name of datadog monitor for Network Out"
}

output "system_open_file_name" {
  value       = "${module.system.open_file_name}"
  description = "The name of datadog monitor for Open File"
}

output "system_load_name" {
  value       = "${module.system.system_load_name}"
  description = "The name of datadog monitor for System Load"
}
