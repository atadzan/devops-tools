1. useradd -M -r -s /bin/false node_exporter

2. cp node_exporter /usr/local/bin/

3. chown node_exporter:node_exporter /usr/local/bin/node_exporter

4. cat node.service > /etc/systemd/system/node_exporter.service

5. systemctl daemon-reload

6. systemctl enable --now node_exporter.service 

7. systemctl status node_exporter

8. nano /etc/prometheus/prometheus.yml
  ## Add Node Exporter
  - job_name: 'node01'
    scrape_interval: 5s
    static_configs:
    - targets: ['127.0.0.1:9100']

9. systemctl restart prometheus
