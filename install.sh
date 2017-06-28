# install.sh
echo "Install script executing......................" > /tmp/vng.log
echo "Executing docker-compose -f NAV_demo.yml up -d"
docker-compose -f /opt/openbaton/scripts/NAV_Demo.yml up -d

# copy node plugins in NAV
# cd /tmp
# wget --no-proxy 10.131.210.166 http://10.131.210.166:88/anv-gfast-yang-plugin-1.3.0-int.134.jar
# wget --no-proxy 10.131.210.166 http://10.131.210.166:88/anv-sdolt-yang-plugin-1.3.0-int.134.jar
# wget --no-proxy 10.131.210.166 http://10.131.210.166:88/anv-sx16f-yang-plugin-1.3.0-int.134.jar

# docker cp anv*.jar anv-docker:/anv/anv-1.3.0-int.134/deploy
# rm /tmp/anv*.jar
