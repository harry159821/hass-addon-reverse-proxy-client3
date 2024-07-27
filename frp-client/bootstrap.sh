#!/usr/bin/env bashio
build_arch=$1
app_path="/usr/src"

function install() {
    bashio::log.info "Installing npc"
    local file_name="npc"

    mkdir -p $app_path
    curl -o /tmp/${file_name} http://192.168.31.22:8000/npc
    cp -f /tmp/${file_name} ${app_path}/
    ls -la $app_path
}

install
