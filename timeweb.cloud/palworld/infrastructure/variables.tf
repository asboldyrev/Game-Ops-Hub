variable "twc_token" {
  sensitive   = true
  description = "Токен для доступа к облаку"
}

variable "server_zone" {
  description = "Зона где будет располагаться сервер"
}

variable "public_ssh_key_path" {
  description = "Публичный SSH-ключ для подключения к серверу"
}

variable "private_ssh_key_path" {
  description = "Приватный SSH-ключ для подключения к серверу"
}

variable "steam_user_password" {
  sensitive   = true
  description = "Пароль для пользователя steam на сервере"
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

