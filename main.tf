data "google_compute_regions" "available" {
}

resource "google_compute_subnetwork" "modular_tf_subnet" {
  count         = length(data.google_compute_regions.available.names)
  name          = "test-subnetworkterra${count.index}"
  ip_cidr_range = cidrsubnet(var.IP_Range, 8, count.index)
  region        = element(data.google_compute_regions.available.names, count.index)
  network       = var.VPC_Name
 
  #secondary_ip_range {
   # range_name    = "tf-test-secondary-range-update${count.index}"
    #ip_cidr_range = "192.168.${count.index}.0/24"
   #}

  depends_on = [google_compute_network.vpc_network]

}

