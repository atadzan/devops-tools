#!/bin/bash

useradd -M -r -s /bin/false node_exporter

cp node_exporter /usr/local/bin/

chown node_exporter:node_exporter /usr/local/bin/node_exporter

cat node_exporter.service > /etc/systemd/system/node_exporter.service

systemctl daemon-reload

sleep 1

systemctl enable --now node_exporter.service

sleep 1

systemctl status node_exporter
