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
