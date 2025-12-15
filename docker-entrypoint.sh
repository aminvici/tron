#!/usr/bin/env bash
set -euo pipefail

CONFIG_PATH="${TRON_CONFIG:-/opt/java-tron/config/config.conf}"

exec java ${JAVA_OPTS:-} -jar /opt/java-tron/FullNode.jar -c "${CONFIG_PATH}" "$@"
