variable "product_domain" {
  type        = "string"
  description = "The name of the product domain"
}

variable "service" {
  type        = "string"
  description = "The name of the service"
}

variable "cluster" {
  type        = "string"
  description = "The name of the Mongo cluster"
  default     = ""
}

variable "recipients" {
  type        = "list"
  default     = []
  description = "Notification recipients when monitor triggered"
}

variable "renotify_interval" {
  type        = "string"
  default     = "0"
  description = "Time interval in minutes which escalation_message will be sent when monitor is triggered"
}

variable "notify_audit" {
  type        = "string"
  default     = false
  description = "Whether any configuration changes should be notified"
}

variable "enabled" {
  type        = "string"
  default     = true
  description = "To enable this module"
}

#########
# MONGO #
#########
variable "curr_op_5s_thresholds" {
  type = "map"

  default = {
    critical = 10
    warning  = 5
  }

  description = "The warning and critical thresholds for Mongo Current Operation 5s monitoring"
}

variable "curr_op_5s_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Current Operation 5s monitor triggered"
}

variable "curr_op_5s_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Current Operation 5s monitor isn't resolved for given time"
}

variable "curr_op_15s_thresholds" {
  type = "map"

  default = {
    critical = 4
    warning  = 2
  }

  description = "The warning and critical thresholds for Mongo Current Operation 15s monitoring"
}

variable "curr_op_15s_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Current Operation 15s monitor triggered"
}

variable "curr_op_15s_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Current Operation 15s monitor isn't resolved for given time"
}

variable "curr_op_30s_thresholds" {
  type = "map"

  default = {
    critical = 2
    warning  = 1
  }

  description = "The warning and critical thresholds for Mongo Current Operation 30s monitoring"
}

variable "curr_op_30s_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Current Operation 30s monitor triggered"
}

variable "curr_op_30s_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Current Operation 30s monitor isn't resolved for given time"
}

variable "page_faultsps_thresholds" {
  type = "map"

  default = {
    critical = 500
    warning  = 250
  }

  description = "The warning and critical thresholds for Mongo Page Faults Per Second monitoring"
}

variable "page_faultsps_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Page Faults Per Second monitor triggered"
}

variable "page_faultsps_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Page Faults Per Second monitor isn't resolved for given time"
}

variable "queue_read_thresholds" {
  type = "map"

  default = {
    critical = 250
    warning  = 100
  }

  description = "The warning and critical thresholds for Mongo Queue Read monitoring"
}

variable "queue_read_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Queue Read monitor triggered"
}

variable "queue_read_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Queue Read monitor isn't resolved for given time"
}

variable "queue_write_thresholds" {
  type = "map"

  default = {
    critical = 75
    warning  = 50
  }

  description = "The warning and critical thresholds for Mongo Queue Write monitoring"
}

variable "queue_write_message" {
  type        = "string"
  default     = ""
  description = "The message when Mongo Queue Write monitor triggered"
}

variable "queue_write_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when Mongo Queue Write monitor isn't resolved for given time"
}

##########
# SYSTEM #
##########
variable "system_cpu_usage_thresholds" {
  type = "map"

  default = {
    critical = 70
    warning  = 50
  }

  description = "The warning and critical thresholds for System CPU Usage Monitoring"
}

variable "system_cpu_usage_message" {
  type        = "string"
  default     = ""
  description = "The message when System CPU Usage Monitor triggered"
}

variable "system_cpu_usage_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System CPU Usage Monitor isn't resolved for given time"
}

variable "system_disk_usage_thresholds" {
  type = "map"

  default = {
    critical = 70
    warning  = 50
  }

  description = "The warning and critical thresholds for System Disk Usage Monitoring"
}

variable "system_disk_usage_message" {
  type        = "string"
  default     = ""
  description = "The message when System Disk Usage Monitor triggered"
}

variable "system_disk_usage_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Disk Usage Monitor isn't resolved for given time"
}

variable "system_memory_free_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for System Free Memory Monitoring"
}

variable "system_memory_free_message" {
  type        = "string"
  default     = ""
  description = "The message when System Free Memory Monitor triggered"
}

variable "system_memory_free_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Free Memory Monitor isn't resolved for given time"
}

variable "system_network_in_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for System Network In Monitoring"
}

variable "system_network_in_message" {
  type        = "string"
  default     = ""
  description = "The message when System Network In Monitor triggered"
}

variable "system_network_in_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Network In Monitor isn't resolved for given time"
}

variable "system_network_out_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for System Network Out Monitoring"
}

variable "system_network_out_message" {
  type        = "string"
  default     = ""
  description = "The message when System Network Out Monitor triggered"
}

variable "system_network_out_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Network Out Monitor isn't resolved for given time"
}

variable "system_open_file_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for System Open File Monitoring"
}

variable "system_open_file_message" {
  type        = "string"
  default     = ""
  description = "The message when System Open File Monitor triggered"
}

variable "system_open_file_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Open File Monitor isn't resolved for given time"
}

variable "system_load_thresholds" {
  type        = "map"
  description = "The warning and critical thresholds for System Load Monitoring"
}

variable "system_load_message" {
  type        = "string"
  default     = ""
  description = "The message when System Load Monitor triggered"
}

variable "system_load_escalation_message" {
  type        = "string"
  default     = ""
  description = "The escalation message when System Load Monitor isn't resolved for given time"
}
