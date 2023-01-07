resource "grafana_data_source" "influxdb" {
  type                = "influxdb"
  name                = "influxdb_tf"
  url                 = var.influxdb_url
  basic_auth_enabled  = true
  basic_auth_username = var.influxdb_username
  database_name       = var.influxdb_db_name

  json_data_encoded = jsonencode({
    authType          = "default"
    basicAuthPassword = "${var.influxdb_username}"
  })
}

output "influxdb_uid" {
  value = grafana_data_source.influxdb.uid
}

resource "grafana_data_source" "influxdb_logger_db" {
  type                = "influxdb"
  name                = "InfluxDB-Logger_db_tf"
  url                 = var.influxdb_url
  basic_auth_enabled  = true
  basic_auth_username = var.influxdb_username
  database_name       = "logger_db"

  json_data_encoded = jsonencode({
    authType          = "default"
    username          = "${var.influxdb_username}"
    basicAuthPassword = "${var.influxdb_username}"
  })
}

output "influxdb_logger_db_uid" {
  value = grafana_data_source.influxdb_logger_db.uid
}

variable "influxdb_url" {
  type        = string
  description = "The url of the influxdb."
}

variable "influxdb_username" {}

variable "influxdb_db_name" {}