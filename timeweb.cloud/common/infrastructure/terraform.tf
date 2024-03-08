terraform {
  required_providers {
    twc = {
      source = "tf.timeweb.cloud/timeweb-cloud/timeweb-cloud"
    }
  }
  required_version = ">= 1.5.3"
}

provider "twc" {
  token = var.twc_token
}

data "twc_s3_preset" "steam-s3-preset" {
  location = "ru-1"
  disk     = 1024 * 10
}

