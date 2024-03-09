terraform {
  required_providers {
    twc = {
      source = "tf.timeweb.cloud/timeweb-cloud/timeweb-cloud"
    }
  }
  required_version = ">= 1.5.3"

  backend "s3" {
    key                         = "states/palworld/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
  }
}

data "twc_projects" "steam-project" {
  name = var.steam_project_name
}

data "twc_ssh_keys" "public_root_key" {
  name = var.steam_root_key_name
}

data "twc_s3_bucket" "state-bucket" {
  name = var.steam_s3_bucket_name
}
