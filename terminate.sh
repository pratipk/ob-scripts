#!/bin/sh
echo "Teminate script"
echo "Executing docker-compose -f NAV_demo.yml down"
docker-compose -f /home/nav/NAV_Demo.yml down
