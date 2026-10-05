terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 7.0"
    }
  }

  required_version = ">= 1.6.0"
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "network" {
  source = "../../modules/network"
}

module "gke" {
  source = "../../modules/gke"

  project_id    = var.project_id
  network_id    = module.network.network_id
  subnetwork_id = module.network.subnetwork_id
}
