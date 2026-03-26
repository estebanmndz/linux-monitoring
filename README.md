# 📊 Linux Monitoring & Alerting Script (Bash)

![Linux](https://img.shields.io/badge/Linux-Monitoring-blue)
![Bash](https://img.shields.io/badge/Bash-Scripting-black)
![Observability](https://img.shields.io/badge/Observability-Alerting-green)

> 💡 Monitor system health and detect issues using real-time metrics and basic alerting thresholds

---

## 🧠 Overview

This project provides a Bash script that monitors key system metrics and generates alerts when thresholds are exceeded.

It simulates basic observability and alerting practices used in real-world environments.

**Technologies used:**

* Linux (Ubuntu/Debian)
* Bash scripting
* System monitoring tools (`top`, `free`, `df`)

---

## 🎯 Objective

The goal of this project is to:

* Monitor system performance
* Detect abnormal resource usage
* Generate alerts based on thresholds
* Log system metrics for analysis

---

## 📊 Metrics Collected

The script monitors:

* **CPU usage**
* **Memory usage (RAM)**
* **Disk usage**

---

## 🚨 Alerting System

The script includes basic alerting:

* CPU usage > 80%
* RAM usage > defined threshold
* Disk usage > 80%

Alerts are logged when thresholds are exceeded.

---

## 🏗️ Execution Flow

```id="n7b9rj"
[Linux Server]
        ↓
[Run Script]
        ↓
[Collect Metrics]
        ↓
[Evaluate Thresholds]
        ↓
[Generate Alerts]
        ↓
[Log Results]
```

---

## ⚙️ Key Features

* Real-time system monitoring
* Threshold-based alerting
* Persistent logging (`monitor.log`)
* Lightweight and dependency-free
* Easy to extend

---

## 🧩 How It Works

The script performs:

1. Collects CPU, RAM, and disk metrics
2. Logs system status
3. Evaluates thresholds
4. Generates alerts if limits are exceeded
5. Stores all output in a log file

---

## 🔐 Security Considerations

* Read-only monitoring (no system modifications)
* Safe to run in production environments

---

## 🌍 Real-World Use Case

This script can be used to:

* Monitor server health in small environments
* Detect performance issues early
* Provide basic observability without external tools
* Serve as a foundation for advanced monitoring systems

---

## ▶️ Usage

```bash id="x2j2re"
./monitor.sh
```

---

## 📊 Example Output

```id="d5rr03"
📊 CPU: 45% | RAM: 600/2000MB | DISK: 70%
⚠️ Alta CPU detectada
```

---

## 🚀 Future Improvements

* Configurable thresholds
* Email or webhook alerting
* Integration with Prometheus / Grafana
* Historical metrics storage
* Process-level monitoring

---

## 📌 Key Takeaways

This project demonstrates:

* Linux system monitoring
* Basic alerting mechanisms
* Observability principles
* DevOps / SRE mindset

---
