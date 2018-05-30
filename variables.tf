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

variable "environment" {
  type        = "string"
  default     = "*"
  description = "The name of the environment"
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
