provider "google" {
  credentials = "${file("/Users/admin/Interview/dilfuz-service-account.json")}" #GOOGLE_CREDENTIALS to the path of a file containing the credential JSON
  project     = "${var.project}"
}

resource "google_container_cluster" "cluster_dilfuz_com" {
  name               = "${var.cluster_name}"
  network            = "default"
  subnetwork         = "default"
  zone               = "us-central1-a"
  min_master_version = "1.12.8-gke.10"
  initial_node_count = "${var.node_count}"
  project            = "${var.project}"

  node_config {
    machine_type = "n1-standard-4"
  }
}
