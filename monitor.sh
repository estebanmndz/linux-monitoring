#!/bin/bash

LOG_FILE="monitor.log"

log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# =========================
# MÉTRICAS
# =========================

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
RAM_USED=$(free -m | awk '/Mem/ {print $3}')
RAM_TOTAL=$(free -m | awk '/Mem/ {print $2}')
DISK=$(df -h / | awk 'NR==2 {print $5}')

# =========================
# OUTPUT
# =========================

log "📊 CPU: $CPU% | RAM: ${RAM_USED}/${RAM_TOTAL}MB | DISK: $DISK"

# =========================
# ALERTAS (básicas)
# =========================

if (( $(echo "$CPU > 80" | bc -l) )); then
    log "⚠️ Alta CPU detectada"
fi

if [ "$RAM_USED" -gt 800 ]; then
    log "⚠️ Alto uso de RAM"
fi

DISK_NUM=$(echo $DISK | tr -d '%')

if [ "$DISK_NUM" -gt 80 ]; then
    log "⚠️ Disco casi lleno"
fi
