variable "project_id" {
  description = "GCP project ID used by the GKE cluster"
  type        = string
}

variable "network_id" {
  description = "ID of the VPC network used by GKE"
  type        = string
}

variable "subnetwork_id" {
  description = "ID of the subnet used by GKE"
  type        = string
}
