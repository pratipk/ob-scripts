#!/bin/sh
echo "Config script" >> /tmp/vnf.log
echo $internal_floatingIp > my_ip
echo $server_internal_floatingIp > server_ip
echo $vnfm_address > vnfm_ip

echo "MY_IP="$internal_floatingIp > .env
echo "SERVER_IP="$server_internal_floatingIp >> .env
echo "VNFM_IP="$vnfm_address >> .env

result=$(dpkg -l | grep "zabbix-agent" | wc -l)
if [ ${result} -eq 0 ]; then
    echo "Installing zabbix-agent for server at $vnfm_address"
    apt-get install -y zabbix-agent
else
    echo "Zabbix-agent is already installed"
fi
sed -i -e "s|ServerActive=127.0.0.1|ServerActive=${MONITORING_IP}:10051|g" -e "s|Server=127.0.0.1|Server=${MONITORING_IP}|g" -e "s|Hostname=Zabbix server|#Hostname=|g" /etc/zabbix/zabbix_agentd.conf

# sed -i 's/^Server=\(.*\)/Server='$vnfm_address'/' /etc/zabbix/zabbix_agentd.conf
# sed -i 's/^ServerActive=\(.*\)/ServerActive='$vnfm_address'/' /etc/zabbix/zabbix_agentd.conf
# echo "Server="$vnfm_address >> /etc/zabbix/zabbix_agentd.conf
# echo "ServerActive="$vnfm_address >> /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart
