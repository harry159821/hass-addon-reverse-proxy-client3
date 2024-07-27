#!/usr/bin/env bashio
WAIT_PIDS=()
CONFIG_PATH='/share/npc.conf'
DEFAULT_CONFIG_PATH='/npc.conf'

function stop_npc() {
    bashio::log.info "Shutdown npc client"
    kill -15 "${WAIT_PIDS[@]}"
}

bashio::log.info "Starting frp client"

# cat $CONFIG_PATH

cd /usr/src
./npc -server=119.3.68.58:8024 -vkey=y3m1i57pftcmul1j -type=tcp & WAIT_PIDS+=($!)

# tail -f /share/frpc.log &

trap "stop_npc" SIGTERM SIGHUP
wait "${WAIT_PIDS[@]}"
