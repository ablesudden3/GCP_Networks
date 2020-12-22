variable "VPC_Name" {
  description = "Name of the VPC"
}

variable "IP_Range" {
  description = "Range of the IP"

}

variable "region" {
  type        = list(string)
  description = "default region for all the resources to be created"
}

