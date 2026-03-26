#!/bin/bash

LOG_FILE="monitor.log"

# =========================
# CONFIGURACIÓN
# =========================
CPU_THRESHOLD=80
RAM_THRESHOLD=800   # MB
DISK_THRESHOLD=80   # %

# =========================
# LOGGING
# =========================
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

log "📊 Iniciando monitorización..."

# =========================
# MÉTRICAS
# =========================

# CPU (más robusto)
CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)

# RAM
RAM_USED=$(free -m | awk '/Mem/ {print $3}')
RAM_TOTAL=$(free -m | awk '/Mem/ {print $2}')

# DISCO
DISK=$(df -h / | awk 'NR==2 {print $5}')
DISK_NUM=$(echo $DISK | tr -d '%')

# UPTIME
UPTIME=$(uptime -p)

# =========================
# OUTPUT
# =========================

log "CPU: ${CPU_USAGE}% | RAM: ${RAM_USED}/${RAM_TOTAL}MB | DISK: ${DISK} | UPTIME: ${UPTIME}"

# =========================
# ALERTAS
# =========================

# CPU
if (( $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc -l) )); then
    log "⚠️ High CPU usage detected (${CPU_USAGE}%)"
fi

# RAM
if [ "$RAM_USED" -gt "$RAM_THRESHOLD" ]; then
    log "⚠️ High RAM usage detected (${RAM_USED}MB)"
fi

# DISK
if [ "$DISK_NUM" -gt "$DISK_THRESHOLD" ]; then
    log "⚠️ Disk usage is high (${DISK})"
fi

log "✅ Monitorización completada"
