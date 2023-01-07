terraform {
  required_version = "1.3.2"
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.32.0"
    }
  }
}