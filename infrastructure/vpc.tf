# this will create a VPC to deploy the new cluster into 

# we are telling which project and region the VPC should be created under
provider "google" {
  project = var.project_id
  region  = var.region
}

# create the actual vpc name is going to be "MRI-SLAVA-TEST-vpc" and since we are creating subnets ourselves auto creation is disabled
resource "google_computer_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = "false"
}

# Create the subnet for our pods and services to live in
resource "google_computer_subnetwork" "subnet" {
  name          = "${var.project_id}-subnet"
  region        = var.region
  network       = google_computer_network.vpc.name
  ip_cidr_range = "10.10.0.0/24"
}
