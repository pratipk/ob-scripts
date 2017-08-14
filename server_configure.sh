#!/bin/sh
echo "Config script" >> /tmp/vnf.log
echo $internal_floatingIp > my_ip
echo $server_internal_floatingIp > server_ip
echo "MY_IP="$internal_floatingIp > .env
echo "SERVER_IP="$server_internal_floatingIp >> .env
echo "VNFM_IP"=$vnfm_address >> .env

echo "Server="$vnfm_address >> /etc/zabbix/zabbix_agentd.conf
echo "ServerActive="$vnfm_addres >> /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart
