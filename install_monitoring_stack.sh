#!/bin/bash

echo "[+] Instalando Grafana..."
sudo dnf install -y grafana
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

echo "[+] Instalando MariaDB..."
sudo dnf install -y mariadb-server
sudo systemctl enable mariadb
sudo systemctl start mariadb

echo "[+] Instalando Prometheus..."
useradd --no-create-home --shell /usr/sbin/nologin prometheus
mkdir /etc/prometheus /var/lib/prometheus
cp prometheus.yml /etc/prometheus/
cp prometheus.service /etc/systemd/system/

echo "[+] Instalando Node Exporter..."
useradd --no-create-home --shell /usr/sbin/nologin nodeusr
cp node_exporter.service /etc/systemd/system/

echo "[+] Recargando systemd..."
sudo systemctl daemon-reload

echo "[+] Habilitando servicios..."
sudo systemctl enable prometheus
sudo systemctl enable node_exporter

echo "[+] Iniciando servicios..."
sudo systemctl start prometheus
sudo systemctl start node_exporter

echo "[+] Instalación finalizada."
