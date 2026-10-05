output "network_id" {
  description = "ID of the VPC network"
  value       = google_compute_network.vpc.id
}

output "subnetwork_id" {
  description = "ID of the GKE subnet"
  value       = google_compute_subnetwork.gke.id
}
