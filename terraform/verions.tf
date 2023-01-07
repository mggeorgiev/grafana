terraform {
  required_version = "1.3.2"
  required_providers {
    grafana = {
      source = "grafana/grafana"
      version = "1.32.0"
    }
  }
}

provider "grafana" {
  # Configuration options
  url  = var.grafana_url #"http://grafana.example.com/"
  auth = var.grafana_auth
}

variable "grafana_url" {}
variable "grafana_auth" { sensitive = true }