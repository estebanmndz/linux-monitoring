# 📊 Linux Basic Monitoring Script

## 🧠 Descripción

Este script en Bash recoge métricas básicas del sistema en tiempo real, simulando un enfoque inicial de monitorización en entornos Linux.

Está orientado a entender y automatizar la observabilidad básica de recursos, un componente clave en entornos DevOps y Cloud.

---

## 📊 Métricas recogidas

* Uso de CPU (%)
* Uso de memoria RAM (MB)
* Uso de disco (%)

---

## ⚙️ Características técnicas

* Script ligero en Bash
* Logging con timestamp
* Cálculo de métricas en tiempo real
* Alertas básicas configurables
* Sin dependencias externas (salvo herramientas estándar Linux)

---

## ▶️ Uso

```bash
chmod +x monitor.sh
./monitor.sh
```

---

## 📊 Output

```
2026-03-25 12:00:00 - 📊 CPU: 35% | RAM: 1024/4096MB | DISK: 45%
```

En caso de superar umbrales:

```
⚠️ Alta CPU detectada
⚠️ Disco casi lleno
```

---

## ⚠️ Consideraciones

* Script orientado a entornos Linux
* Las métricas son aproximadas (no reemplaza herramientas como Prometheus)
* Los umbrales son configurables en el script

---

## 🚀 Mejoras futuras

* Envío de alertas (email/webhook)
* Integración con Prometheus / Node Exporter
* Visualización en Grafana
* Ejecución programada con cron
