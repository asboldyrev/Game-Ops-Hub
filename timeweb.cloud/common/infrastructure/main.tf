resource "twc_project" "steam-project" {
  name = var.steam_project_name
}

resource "twc_ssh_key" "steam-root-key" {
  name = var.steam_root_key_name
  body = file(var.ssh_key_path)
}

resource "twc_s3_bucket" "steam-s3-bucket" {
  name       = var.steam_s3_bucket_name
  type       = "private"
  preset_id  = data.twc_s3_preset.steam-s3-preset.id
  project_id = resource.twc_project.steam-project.id
}
