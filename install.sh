# install.sh
echo "Install script executing......................" > /tmp/vng.log
echo "Executing docker-compose -f /home/nav/NAV_demo.yml up -d"
docker-compose -f /home/nav/NAV_demo.yml up -d
