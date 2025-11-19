Red Hat Monitoring Stack – Prometheus + Node Exporter + Grafana + MariaDB

Este repositorio documenta la instalación y configuración completa de un entorno de monitorización profesional en Red Hat, utilizando:

Prometheus como motor de métricas

Node Exporter para métricas del sistema

Grafana para visualización

MariaDB como base de datos para Grafana

Servicios systemd para ejecutar todo de forma automática

Este proyecto fue implementado desde cero en un sistema Red Hat y documenta paso a paso la configuración real utilizada.

📌 1. Objetivos

Aprender a desplegar una pila completa de monitorización profesional.

Automatizar servicios con systemd.

Integrar Grafana con MariaDB.

Crear un dashboard propio de métricas del servidor.

Desplegar Node Exporter y recopilar métricas reales.

📌 2. Tecnologías utilizadas

Red Hat Linux

Prometheus 

Node Exporter

Grafana OSS

MariaDB

systemd

firewalld

📌 3. Configuración incluida en este repositorio

prometheus.yml: configuración real utilizada

Servicios systemd para Prometheus y Node Exporter

Dashboard JSON exportado desde Grafana

Script de instalación automatizada

Capturas del sistema funcionando

📌 4. Dashboard de Grafana

El archivo dashboard.json contiene el panel utilizado para visualizar:

Uso de CPU

Uso de RAM

Carga del sistema

Disco

Red (TX/RX)

Uptime del servidor

Solo tienes que importarlo desde:

Grafana → Dashboards → Import → Upload JSON

📌 5. Screenshots

Dentro del directorio /screenshots están las capturas reales de funcionamiento:

Prometheus con targets "UP"

Node Exporter ejecutándose como servicio

Servicios en estado active (running)

Dashboard completo funcionando

📌 6. Autor

Proyecto implementado y documentado por Fran Olivares como parte de un laboratorio profesional de monitorización en Red Hat.
