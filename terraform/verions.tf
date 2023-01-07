terraform {
  required_version = "1.3.2"
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.32.0"
    }
  }
}

provider "grafana" {
  # Configuration options
  url  = var.grafana_url
  auth = var.grafana_auth
}

provider "grafana" {
  alias = "sofia"
  # Configuration options
  url  = var.grafana_url_sofia
  auth = var.grafana_auth_sofia
}

variable "grafana_url" {
  type        = string
  description = "The root URL of a Grafana server. May alternatively be set via the GRAFANA_URL environment variable. ex: http://grafana.example.com/"
}
variable "grafana_auth" {
  type        = string
  description = "API token or basic auth username:password. May alternatively be set via the GRAFANA_AUTH environment variable."
  sensitive   = true
}

variable "grafana_url_sofia" {
  type        = string
  description = "The root URL of a Grafana server. May alternatively be set via the GRAFANA_URL environment variable. ex: http://grafana.example.com/"
}
variable "grafana_auth_sofia" {
  type        = string
  description = "API token or basic auth username:password. May alternatively be set via the GRAFANA_AUTH environment variable."
  sensitive   = true
}