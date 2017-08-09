#!/bin/sh
echo "Config script" >> /tmp/vnf.log
echo $internal_floatingIp > my_ip
echo $server_internal_floatingIp > server_ip
echo "MY_IP="$internal_floatingIp > .env
echo "SERVER_IP="$server_internal_floatingIp >> .env
