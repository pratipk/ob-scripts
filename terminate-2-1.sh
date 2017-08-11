#!/bin/sh
echo "Teminate script"
echo "Executing docker-compose -f NAV-2-1.yml down"
docker-compose -f /opt/openbaton/scripts/NAV-2-1.yml down
