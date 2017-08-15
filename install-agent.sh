result=$(dpkg -l | grep "zabbix-agent" | wc -l)
if [ ${result} -eq 0 ]; then
    echo "Installing zabbix-agent for server at $vnfm_address"
    apt-get install -y zabbix-agent
else
    echo "Zabbix-agent is already installed"
fi
grep Server /etc/zabbix/zabbix_agentd.conf
sed -i -e "s|ServerActive=127.0.0.1|ServerActive=${vnfm_address}:10051|g" -e "s|Server=127.0.0.1|Server=${vnfm_address}|g" -e "s|Hostname=Zabbix server|#Hostname=|g" /etc/zabbix/zabbix_agentd.conf

# sed -i 's/^Server=\(.*\)/Server='$vnfm_address'/' /etc/zabbix/zabbix_agentd.conf
# sed -i 's/^ServerActive=\(.*\)/ServerActive='$vnfm_address'/' /etc/zabbix/zabbix_agentd.conf
# echo "Server="$vnfm_address >> /etc/zabbix/zabbix_agentd.conf
# echo "ServerActive="$vnfm_address >> /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart
