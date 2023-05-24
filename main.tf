######## Pub/Sub
# Defines a Pub/Sub topic where scc_notification_config will push notifications.
resource "google_pubsub_topic" "scc_notification_topic" {
  project = var.pubsub_topic_project_id
  name    = var.pubsub_topic
}
########

######## Security Command Center
# Defines a Security Command Center NotificationConfig.
resource "google_scc_notification_config" "scc_notification_config" {
  config_id    = var.config_id
  organization = var.organization_id
  description  = var.description
  pubsub_topic = google_pubsub_topic.scc_notification_topic.id

  streaming_config {
    filter = var.notification_filter
  }
}
########
