output "topic_id" {
  value = google_pubsub_topic.scc_notification_topic.id
  description = "Pub/Sub Topic ID that receives the security notifications ID in the format projects/{{project}}/topics/{{name}}"
}
