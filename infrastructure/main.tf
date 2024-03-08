# Creates the cluster along with a default node pool

data "google_client_config" "default" {}

# this bit is used for credentials into the cluster
provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}

# Create the cluster itself along with a node pool
module "gke" {
  source  = "terraform-google-modules/kubernetes-engine/google"
  version = "~> 30.0"
  
  # pulling things like project ID from variables that we have in variables.tf
  project_id                 = var.project_id
  name                       = var.name
  regional                   = false
  region                     = var.region
  zones                      = var.zones
  # Using the data from VPC creation to dynamically assign things
  network                    = data.google_compute_network.vpc.name
  subnetwork                 = data.google_compute_subnetwork.subnet.name
  ip_range_pods              = "${data.google_compute_network.vpc.name}-pods"
  ip_range_services          = "${data.google_compute_network.vpc.name}-services"
  # assuming existing service account 
  create_service_account     = false
  service_account            = var.service_account
  deletion_protection        = false
  network_policy             = false
  horizontal_pod_autoscaling = true

  # Create the actual node pool for us to deploy our workloads into
  node_pools = [
    {
      name               = "default-node-pool"
      machine_type       = "e2-medium"
      node_locations     = var.zones
      min_count          = 1
      max_count          = 10
      local_ssd_count    = 0
      spot               = false
      disk_size_gb       = 100
      disk_type          = "pd-standard"
      image_tyep         = "COS_CONTAINERD"
      auto_repair        = true
      auto_upgrade       = false
      preemptible        = false
      initial_node_count = 3
    },
  ]

  node_pools_oauth_scopes = {
    all = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }
  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}
