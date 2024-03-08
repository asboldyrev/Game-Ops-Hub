variable "twc_token" {
  sensitive   = true
  description = "Токен для доступа к облаку"
}

variable "ssh_key_path" {
  description = "Публичный SSH-ключ для подключения к серверу"
}

variable "steam_project_name" {
  description = "Название проекта, в котором будут находиться все сервера"
}

variable "steam_root_key_name" {
  description = "Название SSH-ключа для подключения к серверам"
}

variable "steam_s3_bucket_name" {
  description = "Название s3 бакета для хранения бекапов"
}