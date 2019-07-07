resource "google_storage_bucket" "dilfuz_bucket" {
  name          = "dilfuz-bucket"
  storage_class = "COLDLINE"
  location      = "${var.region}"
}
