variable "organization_id" {
  description = "Numerical GCP Organization ID"
  type        = string
}

variable "config_id" {
  description = "Config ID for the SCC Notification Config"
  type        = string
  default     = "scc_notification_config"
}

variable "notification_filter" {
  description = "A valid SCC findings notification filter. By default, High and Critical security findings will be notified."
  type        = string
  default     = "(severity=\"HIGH\" OR severity=\"CRITICAL\") AND state=\"ACTIVE\""
}

variable "description" {
  description = "Description of the SCC Notification Config"
  type        = string
  default     = "Security Command Center Notification Configuration for Critical and High vulnerabilities."
}

variable "pubsub_topic" {
  description = "A name for the Pub/Sub topic that receives the security finding notifications."
  type        = string
  default     = "scc_notification_topic"
}

variable "pubsub_topic_project_id" {
  description = "Project ID for the GCP project where the receiving Pub/Sub topic will be created."
  type        = string
}
