resource "google_filestore_instance" "filestore-instance" {
  name     = "my-filestore-instance"
  location = "us-central1-a"
  tier     = "BASIC_HDD"

  file_shares {
    capacity_gb = 1024
    name        = "mycustomshare"
  }

  networks {
    network = "default"
    modes   = ["MODE_IPV4"]
  }
}

