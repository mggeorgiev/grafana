# data "grafana_dashboard" "from_id" {
#   dashboard_id = grafana_dashboard.test.dashboard_id
# }

# data "grafana_dashboard" "from_uid" {
#   depends_on = [
#     grafana_dashboard.test
#   ]
#   uid = "test-ds-dashboard-uid"
# }

data "grafana_dashboard" "Fail2banSofia" {
  provider = grafana.sofia
  uid      = "cuSLZ6Wnz"
}