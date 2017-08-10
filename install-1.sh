# install.sh
echo "Install script executing......................" >> /tmp/vnf.log
echo "Executing docker-compose -f NAV-1.yml up -d"
docker-compose -f /opt/openbaton/scripts/NAV-1.yml up -d
