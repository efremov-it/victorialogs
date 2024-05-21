FROM grafana/grafana-enterprise

# Add VM plugin
RUN ver=$(curl -s https://api.github.com/repos/VictoriaMetrics/grafana-datasource/releases/latest | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1) && \
    curl -L https://github.com/VictoriaMetrics/grafana-datasource/releases/download/$ver/victoriametrics-datasource-$ver.tar.gz -o /tmp/plugin.tar.gz && \
    tar -xf /tmp/plugin.tar.gz -C /var/lib/grafana/plugins && rm /tmp/plugin.tar.gz

# Add VL plugin
RUN ver=$(curl -s https://api.github.com/repos/VictoriaMetrics/victorialogs-datasource/releases/latest | grep -oE 'v[0-9]+\.[0-9]+\.[0-9]+' | head -1) && \
    curl -L https://github.com/VictoriaMetrics/victorialogs-datasource/releases/download/$ver/victorialogs-datasource-$ver.tar.gz -o /tmp/plugin.tar.gz && \
    tar -xf /tmp/plugin.tar.gz -C /var/lib/grafana/plugins && rm /tmp/plugin.tar.gz
