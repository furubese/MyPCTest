locals {
  talos = {
    version = "v1.7.4"
  }
}

resource "proxmox_virtual_environment_download_file" "talos_nocloud_image" {
  content_type            = "iso"
  datastore_id            = "local"
  node_name               = "<your proxmox node>"

  file_name               = "talos-1.11.5-amd64.iso"
  url                     = "https://factory.talos.dev/image/376567988ad370138ad8b2698212367b8edcb69b5fd68c80be1f2ec7d603b4ba/v1.11.5/metal-amd64.iso"
  overwrite               = false
}