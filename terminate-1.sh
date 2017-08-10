#!/bin/sh
echo "Teminate script"
echo "Executing docker-compose -f NAV_demo.yml down"
docker-compose -f /opt/openbaton/scripts/NAV-1.yml down
