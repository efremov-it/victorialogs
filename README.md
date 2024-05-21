# Используем victoriaLogs

Сборщик `vector`

Визуализация `Grafana`

В grafana установлены плагины `datasource`



# victorialogs important flugs

-httpAuth.password value  Password for HTTP server's Basic Auth. The authentication is disabled if-httpAuth.username is empty Flag value can be read from the given file when using -httpAuth.password=file:///abs/path/to/file or -httpAuth.password=file://./relative/path/to/file . Flag value can be read from the given http/https url when using
-httpAuth.password=http://host/path or -httpAuth.password=https://host/path -httpAuth.username string  Username for HTTP server's Basic Auth. The authentication is disabled if empty. See also -httpAuth.password
-envflag.enable  Whether to enable reading flags from environment variables in addition to the command line. Command line flag values have priority over values from environment vars. Flags are read only from the command line if this flag isn't set. See https://docs.victoriametrics.com/#environment-variables for more details
-pushmetrics.extraLabel array  Optional labels to add to metrics pushed to -pushmetrics.url . For example, -pushmetrics.extraLabel='instance="foo"' adds instance="foo" label to all the metrics pushed to -pushmetrics.url  Supports an array of values separated by comma or specified via multiple flags. -pushmetrics.interval duration  Interval for pushing metrics to -pushmetrics.url (default 10s) -pushmetrics.url array  Optional URL to push metrics exposed at /metrics page. See https://docs.victoriametrics.com/#push-metrics . By default, metrics exposed at /metrics page aren't pushed to any remote storage  Supports an array of values separated by comma or specified via multiple flags.
-retentionPeriod value  Log entries with timestamps older than now-retentionPeriod are automatically deleted; log entries with timestamps outside the retention are also rejected during data ingestion; the minimum supported retention is 1d (one day); see https://docs.victoriametrics.com/VictoriaLogs/#retention  The following optional suffixes are supported: h (hour), d (day), w (week), y (year). If suffix isn't set, then the duration is counted in months (default 7d)


