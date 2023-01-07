resource "grafana_dashboard" "fail2ban" {
  config_json = jsonencode({
    id                   = 2
    uid                  = "failtobantf"
    title                = "Fail2ban",
    tags                 = ["templated", "influxdb", "telegraf"],
    timezone             = "browser",
    schemaVersion        = 37,
    refresh              = "",
    style                = "dark",
    version              = 0,
    refresh              = "25s"
    timepicker           = {},
    description          = "Add fail2ban graph for ssh, purftp, dovecot, postfix"
    editable             = true,
    fiscalYearStartMonth = 0,
    gnetId               = 9629,
    graphTooltip         = 0,
    id                   = 2,
    links                = [],
    liveNow              = false,
    timezone             = "",
    "gnetId" : 9629,
    "graphTooltip" : 0,
    annotations = {
      "list" : [
        {
          "builtIn" : 1,
          "datasource" : {
            "type" : "datasource",
            "uid" : "grafana"
          },
          "enable" : true,
          "hide" : true,
          "iconColor" : "rgba(0, 211, 255, 1)",
          "name" : "Annotations & Alerts",
          "target" : {
            "limit" : 100,
            "matchAny" : false,
            "tags" : [],
            "type" : "dashboard"
          },
          "type" : "dashboard"
        }
      ]
    },
    panels = [
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 0,
          "y" : 0
        },
        "hiddenSeries" : false,
        "id" : 8,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "alias" : "banned.mean",
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              }
            ]
          },
          {
            "alias" : "failed.mean",
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "ALL hypervisor",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 12,
          "y" : 0
        },
        "hiddenSeries" : false,
        "id" : 9,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "alias" : "banned.mean",
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              }
            ]
          },
          {
            "alias" : "failed.mean",
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "ALL srv",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 0,
          "y" : 9
        },
        "hiddenSeries" : false,
        "id" : 11,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              },
              {
                "condition" : "AND",
                "key" : "jail",
                "operator" : "=",
                "value" : "sshd"
              }
            ]
          },
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "SSH hypervisor",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 12,
          "y" : 9
        },
        "hiddenSeries" : false,
        "id" : 12,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              },
              {
                "condition" : "AND",
                "key" : "jail",
                "operator" : "=",
                "value" : "sshd"
              }
            ]
          },
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "SSH srv",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 0,
          "y" : 18
        },
        "hiddenSeries" : false,
        "id" : 10,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              },
              {
                "condition" : "AND",
                "key" : "jail",
                "operator" : "=",
                "value" : "apache-auth"
              }
            ]
          },
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "hypervisor.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "Apache hypervisor",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 12,
          "y" : 18
        },
        "hiddenSeries" : false,
        "id" : 13,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_sshd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "banned"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              },
              {
                "condition" : "AND",
                "key" : "jail",
                "operator" : "=",
                "value" : "apache-auth"
              }
            ]
          },
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "hide" : false,
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "B",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "failed"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : [
              {
                "key" : "host",
                "operator" : "=",
                "value" : "u-srv.sofia"
              }
            ]
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "Apache u-srv",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {
          "type" : "influxdb",
          "uid" : "wvNnck2Vk"
        },
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 0,
          "y" : 27
        },
        "hiddenSeries" : false,
        "id" : 6,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_pureftpd",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "value"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : []
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "PureFTP",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {},
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 12,
          "y" : 27
        },
        "hiddenSeries" : false,
        "id" : 2,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_dovecot_pop3imap",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "value"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : []
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "Dovecot pop3imap",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      },
      {
        "aliasColors" : {},
        "bars" : false,
        "dashLength" : 10,
        "dashes" : false,
        "datasource" : {
          "type" : "influxdb",
          "uid" : "wvNnck2Vk"
        },
        "fill" : 1,
        "fillGradient" : 0,
        "gridPos" : {
          "h" : 9,
          "w" : 12,
          "x" : 12,
          "y" : 36
        },
        "hiddenSeries" : false,
        "id" : 4,
        "legend" : {
          "avg" : false,
          "current" : false,
          "max" : false,
          "min" : false,
          "show" : true,
          "total" : false,
          "values" : false
        },
        "lines" : true,
        "linewidth" : 1,
        "links" : [],
        "nullPointMode" : "null",
        "options" : {
          "alertThreshold" : true
        },
        "percentage" : false,
        "pluginVersion" : "9.3.2",
        "pointradius" : 5,
        "points" : false,
        "renderer" : "flot",
        "seriesOverrides" : [],
        "spaceLength" : 10,
        "stack" : false,
        "steppedLine" : false,
        "targets" : [
          {
            "datasource" : {
              "type" : "influxdb",
              "uid" : "iZV9gqZ7z"
            },
            "expr" : "fail2ban_postfix_sasl",
            "format" : "time_series",
            "groupBy" : [
              {
                "params" : [
                  "$__interval"
                ],
                "type" : "time"
              },
              {
                "params" : [
                  "null"
                ],
                "type" : "fill"
              }
            ],
            "intervalFactor" : 1,
            "legendFormat" : "{{type}}",
            "measurement" : "fail2ban",
            "orderByTime" : "ASC",
            "policy" : "default",
            "refId" : "A",
            "resultFormat" : "time_series",
            "select" : [
              [
                {
                  "params" : [
                    "value"
                  ],
                  "type" : "field"
                },
                {
                  "params" : [],
                  "type" : "mean"
                }
              ]
            ],
            "tags" : []
          }
        ],
        "thresholds" : [],
        "timeRegions" : [],
        "title" : "Postfix sasl",
        "tooltip" : {
          "shared" : true,
          "sort" : 0,
          "value_type" : "individual"
        },
        "type" : "graph",
        "xaxis" : {
          "mode" : "time",
          "show" : true,
          "values" : []
        },
        "yaxes" : [
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          },
          {
            "format" : "short",
            "logBase" : 1,
            "show" : true
          }
        ],
        "yaxis" : {
          "align" : false
        }
      }
    ],
    "templating" : {
      "list" : []
    },
    "time" : {
      "from" : "now-24h",
      "to" : "now"
    },
    "timepicker" : {
      "refresh_intervals" : [
        "5s",
        "10s",
        "30s",
        "1m",
        "5m",
        "15m",
        "30m",
        "1h",
        "2h",
        "1d"
      ],
      "time_options" : [
        "5m",
        "15m",
        "1h",
        "6h",
        "12h",
        "24h",
        "2d",
        "7d",
        "30d"
      ]
    }
  })
}