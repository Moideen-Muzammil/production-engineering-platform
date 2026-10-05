resource "google_service_account" "gke_nodes" {
  account_id   = "gke-node-sa"
  display_name = "GKE node service account"
}

resource "google_project_iam_member" "gke_nodes" {
  project = var.project_id
  role    = "roles/container.defaultNodeServiceAccount"
  member  = "serviceAccount:${google_service_account.gke_nodes.email}"
}

resource "google_container_cluster" "gke" {
  name     = "production-platform-gke"
  location = "asia-south1"

  release_channel {
  channel = "REGULAR"
  }

  network    = var.network_id
  subnetwork = var.subnetwork_id

  networking_mode = "VPC_NATIVE"

  network_policy {
  enabled  = true
  provider = "CALICO"
  }

  ip_allocation_policy {
    cluster_secondary_range_name  = "gke-pods"
    services_secondary_range_name = "gke-services"
  }

  remove_default_node_pool = true
  initial_node_count       = 1
}

resource "google_container_node_pool" "primary" {
  name     = "primary-node-pool"
  location = "asia-south1"
  cluster  = google_container_cluster.gke.name

  node_count = 1
  
  autoscaling {
  min_node_count = 1
  max_node_count = 3
  }

  node_config {
    machine_type    = "e2-standard-2"
    service_account = google_service_account.gke_nodes.email
  }
}
