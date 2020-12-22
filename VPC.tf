resource "google_compute_network" "vpc_network" {
  name                            = var.VPC_Name
  auto_create_subnetworks         = false
  description                     = "Our test VPC"
  routing_mode                    = "REGIONAL"
  delete_default_routes_on_create = false
 
}

