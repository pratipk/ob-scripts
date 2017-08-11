# install.sh
echo "Install script executing......................" >> /tmp/vnf.log
echo "Executing docker-compose -f NAV-2-2.yml up -d"
docker-compose -f /opt/openbaton/scripts/NAV-2-2.yml up -d
