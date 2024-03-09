provider "twc" {
  token = var.twc_token
}

data "twc_configurator" "configurator" {
  location  = "ru-2"
  disk_type = "nvme"
}

data "twc_os" "os" {
  name    = "ubuntu"
  version = "22.04"
}

resource "twc_server" "palworld_server" {
  name  = "PalWorld Server"
  os_id = data.twc_os.os.id

  ssh_keys_ids = [data.twc_ssh_keys.public_root_key.id]

  project_id = data.twc_projects.steam-project.id

  configuration {
    configurator_id = data.twc_configurator.configurator.id
    cpu             = 4
    ram             = 1024 * 16
    disk            = 1024 * 10
  }

}
