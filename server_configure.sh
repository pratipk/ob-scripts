#!/bin/sh
echo "Config script" >> /tmp/vnf.log
echo $internal_floatingIp > my_ip
echo $server_internal_floatingIp > server_ip
echo $vnfm_address > vnfm_ip

echo "MY_IP="$internal_floatingIp > .env
echo "SERVER_IP="$server_internal_floatingIp >> .env
echo "VNFM_IP="$vnfm_address >> .env
