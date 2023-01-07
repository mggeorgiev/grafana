resource "grafana_dashboard" "raspberry_Pi_temperature2" {
  config_json = file("../rasprebby_py_temp.json")
}

# resource "grafana_dashboard" "raspberry_Pi_temperature" {
#   config_json = jsonencode({
#     id                   = 6
#     uid                  = "raspberrypitemperature"
#     title                = "Raspberry Pi Temperature",
#     tags                 = ["templated", "pi", "influxdb", "telegraf"],
#     timezone             = "browser",
#     schemaVersion        = 37,
#     refresh              = "15m",
#     style                = "dark",
#     version              = 0,
#     refresh              = "1m"
#     timepicker           = {},
#     description          = "Grafana dasborad designed for Raspberry pi Systems"
#     editable             = true,
#     fiscalYearStartMonth = 0,
#     gnetId               = 12034,
#     graphTooltip         = 0,
#     links                = [],
#     liveNow              = false,
#     timezone             = "",
#     weekStart            = "",
#     "annotations" : {
#       "list" : [
#         {
#           "builtIn" : 1,
#           "datasource" : {
#             "type" : "datasource",
#             "uid" : "grafana"
#           },
#           "enable" : true,
#           "hide" : true,
#           "iconColor" : "rgba(0, 211, 255, 1)",
#           "name" : "Annotations & Alerts",
#           "target" : {
#             "limit" : 100,
#             "matchAny" : false,
#             "tags" : [],
#             "type" : "dashboard"
#           },
#           "type" : "dashboard"
#         }
#       ]
#     },
#     "links" : [
#       {
#         "icon" : "external link",
#         "includeVars" : true,
#         "tags" : [
#           "telegraf"
#         ],
#         "targetBlank" : true,
#         "type" : "dashboards"
#       }
#     ],
#     "panels" : [
#       {
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "decimals" : 1,
#             "displayName" : "CPU",
#             "mappings" : [
#               {
#                 "id" : 0,
#                 "op" : "=",
#                 "text" : "N/A",
#                 "type" : 1,
#                 "value" : "null"
#               }
#             ],
#             "max" : 90,
#             "min" : 0,
#             "thresholds" : {
#               "mode" : "absolute",
#               "steps" : [
#                 {
#                   "color" : "green",
#                   "value" : null
#                 },
#                 {
#                   "color" : "#EAB839",
#                   "value" : 60
#                 },
#                 {
#                   "color" : "red",
#                   "value" : 80
#                 }
#               ]
#             },
#             "unit" : "celsius"
#           },
#           "overrides" : []
#         },
#         "gridPos" : {
#           "h" : 4,
#           "w" : 5,
#           "x" : 0,
#           "y" : 0
#         },
#         "id" : 8,
#         "links" : [],
#         "options" : {
#           "colorMode" : "background",
#           "graphMode" : "area",
#           "justifyMode" : "auto",
#           "orientation" : "horizontal",
#           "reduceOptions" : {
#             "calcs" : [
#               "mean"
#             ],
#             "fields" : "",
#             "values" : false
#           },
#           "text" : {},
#           "textMode" : "auto"
#         },
#         "pluginVersion" : "9.3.2",
#         "targets" : [
#           {
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$__interval"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "null"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "cpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 },
#                 {
#                   "params" : [
#                     " / 1000"
#                   ],
#                   "type" : "math"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "type" : "stat"
#       },
#       {
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "decimals" : 1,
#             "displayName" : "GPU",
#             "mappings" : [
#               {
#                 "id" : 0,
#                 "op" : "=",
#                 "text" : "N/A",
#                 "type" : 1,
#                 "value" : "null"
#               }
#             ],
#             "max" : 90,
#             "min" : 0,
#             "thresholds" : {
#               "mode" : "absolute",
#               "steps" : [
#                 {
#                   "color" : "green",
#                   "value" : null
#                 },
#                 {
#                   "color" : "#EAB839",
#                   "value" : 60
#                 },
#                 {
#                   "color" : "red",
#                   "value" : 80
#                 }
#               ]
#             },
#             "unit" : "celsius"
#           },
#           "overrides" : []
#         },
#         "gridPos" : {
#           "h" : 4,
#           "w" : 5,
#           "x" : 5,
#           "y" : 0
#         },
#         "id" : 7,
#         "links" : [],
#         "options" : {
#           "colorMode" : "background",
#           "graphMode" : "area",
#           "justifyMode" : "auto",
#           "orientation" : "horizontal",
#           "reduceOptions" : {
#             "calcs" : [
#               "mean"
#             ],
#             "fields" : "",
#             "values" : false
#           },
#           "text" : {},
#           "textMode" : "auto"
#         },
#         "pluginVersion" : "9.3.2",
#         "targets" : [
#           {
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$__interval"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "null"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "gpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "type" : "stat"
#       },
#       {
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "decimals" : 1,
#             "displayName" : "${__field.name}",
#             "mappings" : [],
#             "max" : 90,
#             "min" : 0,
#             "thresholds" : {
#               "mode" : "absolute",
#               "steps" : [
#                 {
#                   "color" : "green",
#                   "value" : null
#                 },
#                 {
#                   "color" : "orange",
#                   "value" : 60
#                 },
#                 {
#                   "color" : "light-red",
#                   "value" : 75
#                 },
#                 {
#                   "color" : "dark-red",
#                   "value" : 80
#                 }
#               ]
#             },
#             "unit" : "celsius"
#           },
#           "overrides" : []
#         },
#         "gridPos" : {
#           "h" : 3,
#           "w" : 24,
#           "x" : 0,
#           "y" : 4
#         },
#         "id" : 5,
#         "options" : {
#           "displayMode" : "lcd",
#           "minVizHeight" : 10,
#           "minVizWidth" : 0,
#           "orientation" : "horizontal",
#           "reduceOptions" : {
#             "calcs" : [
#               "lastNotNull"
#             ],
#             "fields" : "",
#             "values" : false
#           },
#           "showUnfilled" : true,
#           "text" : {}
#         },
#         "pluginVersion" : "9.3.2",
#         "targets" : [
#           {
#             "alias" : "$col",
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$__interval"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "none"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "cpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 },
#                 {
#                   "params" : [
#                     " / 1000"
#                   ],
#                   "type" : "math"
#                 },
#                 {
#                   "params" : [
#                     "CPU"
#                   ],
#                   "type" : "alias"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=",
#                 "value" : "pi8gb.habay"
#               }
#             ]
#           },
#           {
#             "alias" : "$col",
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$__interval"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "none"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "gpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "B",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 },
#                 {
#                   "params" : [
#                     "GPU"
#                   ],
#                   "type" : "alias"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "type" : "bargauge"
#       },
#       {
#         "aliasColors" : {
#           "cpu_temperature.mean" : "blue"
#         },
#         "bars" : false,
#         "dashLength" : 10,
#         "dashes" : false,
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "links" : []
#           },
#           "overrides" : []
#         },
#         "fill" : 1,
#         "fillGradient" : 6,
#         "gridPos" : {
#           "h" : 9,
#           "w" : 12,
#           "x" : 0,
#           "y" : 7
#         },
#         "hiddenSeries" : false,
#         "id" : 2,
#         "legend" : {
#           "avg" : false,
#           "current" : false,
#           "max" : false,
#           "min" : false,
#           "show" : true,
#           "total" : false,
#           "values" : false
#         },
#         "lines" : true,
#         "linewidth" : 1,
#         "nullPointMode" : "null",
#         "options" : {
#           "alertThreshold" : true
#         },
#         "percentage" : false,
#         "pluginVersion" : "9.3.2",
#         "pointradius" : 2,
#         "points" : false,
#         "renderer" : "flot",
#         "seriesOverrides" : [],
#         "spaceLength" : 10,
#         "stack" : false,
#         "steppedLine" : false,
#         "targets" : [
#           {
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$inter"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "null"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "cpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 },
#                 {
#                   "params" : [
#                     " / 1000"
#                   ],
#                   "type" : "math"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "thresholds" : [],
#         "timeRegions" : [
#           {
#             "colorMode" : "blue",
#             "fill" : true,
#             "fillColor" : "rgba(234, 112, 112, 0.12)",
#             "from" : "20:0",
#             "line" : false,
#             "lineColor" : "rgba(237, 46, 24, 0.60)",
#             "op" : "time",
#             "to" : "8:00"
#           }
#         ],
#         "title" : "CPU Temperature",
#         "tooltip" : {
#           "shared" : true,
#           "sort" : 0,
#           "value_type" : "individual"
#         },
#         "type" : "graph",
#         "xaxis" : {
#           "mode" : "time",
#           "show" : true,
#           "values" : []
#         },
#         "yaxes" : [
#           {
#             "format" : "celsius",
#             "logBase" : 1,
#             "show" : true
#           },
#           {
#             "format" : "short",
#             "logBase" : 1,
#             "show" : true
#           }
#         ],
#         "yaxis" : {
#           "align" : false
#         }
#       },
#       {
#         "aliasColors" : {
#           "gpu_temperature.mean" : "dark-orange"
#         },
#         "bars" : false,
#         "dashLength" : 10,
#         "dashes" : false,
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "links" : []
#           },
#           "overrides" : []
#         },
#         "fill" : 1,
#         "fillGradient" : 5,
#         "gridPos" : {
#           "h" : 9,
#           "w" : 12,
#           "x" : 12,
#           "y" : 7
#         },
#         "hiddenSeries" : false,
#         "id" : 3,
#         "legend" : {
#           "avg" : false,
#           "current" : false,
#           "max" : false,
#           "min" : false,
#           "show" : true,
#           "total" : false,
#           "values" : false
#         },
#         "lines" : true,
#         "linewidth" : 1,
#         "nullPointMode" : "null",
#         "options" : {
#           "alertThreshold" : true
#         },
#         "percentage" : false,
#         "pluginVersion" : "9.3.2",
#         "pointradius" : 2,
#         "points" : false,
#         "renderer" : "flot",
#         "seriesOverrides" : [],
#         "spaceLength" : 10,
#         "stack" : false,
#         "steppedLine" : false,
#         "targets" : [
#           {
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$inter"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "null"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "gpu_temperature",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "value"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "thresholds" : [],
#         "timeRegions" : [
#           {
#             "colorMode" : "gray",
#             "fill" : true,
#             "fillColor" : "rgba(234, 112, 112, 0.12)",
#             "from" : "20:00",
#             "line" : false,
#             "lineColor" : "rgba(237, 46, 24, 0.60)",
#             "op" : "time",
#             "to" : "8:00"
#           }
#         ],
#         "title" : "GPU Temperature",
#         "tooltip" : {
#           "shared" : true,
#           "sort" : 0,
#           "value_type" : "individual"
#         },
#         "type" : "graph",
#         "xaxis" : {
#           "mode" : "time",
#           "show" : true,
#           "values" : []
#         },
#         "yaxes" : [
#           {
#             "format" : "celsius",
#             "label" : "",
#             "logBase" : 1,
#             "show" : true
#           },
#           {
#             "format" : "short",
#             "logBase" : 1,
#             "show" : false
#           }
#         ],
#         "yaxis" : {
#           "align" : false
#         }
#       },
#       {
#         "datasource" : {
#           "type" : "influxdb",
#           "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#         },
#         "fieldConfig" : {
#           "defaults" : {
#             "color" : {
#               "mode" : "palette-classic"
#             },
#             "custom" : {
#               "axisCenteredZero" : false,
#               "axisColorMode" : "text",
#               "axisLabel" : "",
#               "axisPlacement" : "auto",
#               "barAlignment" : 0,
#               "drawStyle" : "line",
#               "fillOpacity" : 0,
#               "gradientMode" : "none",
#               "hideFrom" : {
#                 "legend" : false,
#                 "tooltip" : false,
#                 "viz" : false
#               },
#               "lineInterpolation" : "linear",
#               "lineWidth" : 1,
#               "pointSize" : 5,
#               "scaleDistribution" : {
#                 "type" : "linear"
#               },
#               "showPoints" : "auto",
#               "spanNulls" : false,
#               "stacking" : {
#                 "group" : "A",
#                 "mode" : "none"
#               },
#               "thresholdsStyle" : {
#                 "mode" : "off"
#               }
#             },
#             "mappings" : [],
#             "thresholds" : {
#               "mode" : "absolute",
#               "steps" : [
#                 {
#                   "color" : "green",
#                   "value" : null
#                 },
#                 {
#                   "color" : "red",
#                   "value" : 80
#                 }
#               ]
#             }
#           },
#           "overrides" : []
#         },
#         "gridPos" : {
#           "h" : 8,
#           "w" : 12,
#           "x" : 0,
#           "y" : 16
#         },
#         "id" : 10,
#         "options" : {
#           "legend" : {
#             "calcs" : [],
#             "displayMode" : "list",
#             "placement" : "bottom",
#             "showLegend" : true
#           },
#           "tooltip" : {
#             "mode" : "single",
#             "sort" : "none"
#           }
#         },
#         "targets" : [
#           {
#             "datasource" : {
#               "type" : "influxdb",
#               "uid" : "${var.datasource_raspberry_Pi_temperature_uid}"
#             },
#             "groupBy" : [
#               {
#                 "params" : [
#                   "$__interval"
#                 ],
#                 "type" : "time"
#               },
#               {
#                 "params" : [
#                   "null"
#                 ],
#                 "type" : "fill"
#               }
#             ],
#             "measurement" : "cpu",
#             "orderByTime" : "ASC",
#             "policy" : "default",
#             "refId" : "A",
#             "resultFormat" : "time_series",
#             "select" : [
#               [
#                 {
#                   "params" : [
#                     "usage_user"
#                   ],
#                   "type" : "field"
#                 },
#                 {
#                   "params" : [],
#                   "type" : "mean"
#                 }
#               ]
#             ],
#             "tags" : [
#               {
#                 "key" : "host",
#                 "operator" : "=~",
#                 "value" : "/^$server$/"
#               }
#             ]
#           }
#         ],
#         "title" : "CPU",
#         "type" : "timeseries"
#       }
#     ],
#     "templating" : {
#       "list" : [
#         {
#           "current" : {
#             "selected" : false,
#             "text" : "pi202.sofia",
#             "value" : "pi202.sofia"
#           },
#           "datasource" : {
#             "type" : "influxdb",
#             "uid" : "${var.raspberry_Pi_temperature_uid}"
#           },
#           "definition" : "SHOW TAG VALUES FROM system WITH KEY=host",
#           "hide" : 0,
#           "includeAll" : false,
#           "label" : "Server",
#           "multi" : false,
#           "name" : "server",
#           "options" : [],
#           "query" : "SHOW TAG VALUES FROM system WITH KEY=host",
#           "refresh" : 1,
#           "regex" : "",
#           "skipUrlSync" : false,
#           "sort" : 0,
#           "tagValuesQuery" : "",
#           "tagsQuery" : "",
#           "type" : "query",
#           "useTags" : false
#         },
#         {
#           "auto" : true,
#           "auto_count" : 300,
#           "auto_min" : "10s",
#           "current" : {
#             "selected" : false,
#             "text" : "auto",
#             "value" : "$__auto_interval_inter"
#           },
#           "hide" : 0,
#           "label" : "Sampling",
#           "name" : "inter",
#           "options" : [
#             {
#               "selected" : true,
#               "text" : "auto",
#               "value" : "$__auto_interval_inter"
#             },
#             {
#               "selected" : false,
#               "text" : "10s",
#               "value" : "10s"
#             },
#             {
#               "selected" : false,
#               "text" : "30s",
#               "value" : "30s"
#             },
#             {
#               "selected" : false,
#               "text" : "1m",
#               "value" : "1m"
#             },
#             {
#               "selected" : false,
#               "text" : "2m",
#               "value" : "2m"
#             },
#             {
#               "selected" : false,
#               "text" : "5m",
#               "value" : "5m"
#             },
#             {
#               "selected" : false,
#               "text" : "10m",
#               "value" : "10m"
#             },
#             {
#               "selected" : false,
#               "text" : "30m",
#               "value" : "30m"
#             },
#             {
#               "selected" : false,
#               "text" : "1h",
#               "value" : "1h"
#             },
#             {
#               "selected" : false,
#               "text" : "6h",
#               "value" : "6h"
#             },
#             {
#               "selected" : false,
#               "text" : "12h",
#               "value" : "12h"
#             },
#             {
#               "selected" : false,
#               "text" : "1d",
#               "value" : "1d"
#             },
#             {
#               "selected" : false,
#               "text" : "7d",
#               "value" : "7d"
#             },
#             {
#               "selected" : false,
#               "text" : "14d",
#               "value" : "14d"
#             },
#             {
#               "selected" : false,
#               "text" : "30d",
#               "value" : "30d"
#             }
#           ],
#           "query" : "10s,30s,1m,2m,5m,10m,30m,1h,6h,12h,1d,7d,14d,30d",
#           "refresh" : 2,
#           "skipUrlSync" : false,
#           "type" : "interval"
#         }
#       ]
#     },
#     "time" : {
#       "from" : "now-24h",
#       "to" : "now"
#     },
#     "timepicker" : {
#       "refresh_intervals" : [
#         "5s",
#         "10s",
#         "30s",
#         "1m",
#         "5m",
#         "15m",
#         "30m",
#         "1h",
#         "2h",
#         "1d"
#       ]
#     },
#     "timezone" : "",
#     "title" : "Raspberry Pi Temperature",
#     "uid" : "jGG_NqZ7z",
#     "version" : 11,
#     "weekStart" : ""
#   })
# }