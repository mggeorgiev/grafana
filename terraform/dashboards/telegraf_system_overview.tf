resource "grafana_dashboard" "telegraf_system_overview" {
  config_json = file("../telegraf_system_overview.json")
}