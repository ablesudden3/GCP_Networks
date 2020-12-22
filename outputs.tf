
output "subnet_name" {
  value       = google_compute_subnetwork.modular_tf_subnet.*.id
  sensitive   = false
  description = "Subnet name"
}

