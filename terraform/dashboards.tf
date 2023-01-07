module "dashboards" {
  source = "./dashboards"
  providers = {
    grafana = grafana
  }

  datasource_sensehat_uid                 = grafana_data_source.influxdb_logger_db.uid
  datasource_raspberry_Pi_temperature_uid = grafana_data_source.influxdb_logger_db.uid
}