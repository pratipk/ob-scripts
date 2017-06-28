# install.sh
echo "Install script executing......................" > /tmp/vng.log
echo "Executing docker-compose -f /home/nav/NAV_demo.yml up -d"
docker-compose -f /home/nav/NAV_Demo.yml up -d

# copy node plugins in NAV
cd /tmp
wget http://135.249.45.113/artifactory/libs-candidate-release/com/nokia/anv/plug/gfast/1/0/anv-gfast-yang-plugin/1.3.0-int.134/anv-gfast-yang-plugin-1.3.0-int.134.jar
wget http://135.249.45.113/artifactory/libs-candidate-release/com/nokia/anv/plug/sdolt/1/0/anv-sdolt-yang-plugin/1.3.0-int.134/anv-sdolt-yang-plugin-1.3.0-int.134.jar
wget http://135.249.45.113/artifactory/libs-candidate-release/com/nokia/anv/plug/sx16f/5/6/anv-sx16f-yang-plugin/1.3.0-int.134/anv-sx16f-yang-plugin-1.3.0-int.134.jar

docker cp anv*.jar anv-docker:/anv/anv-1.3.0-int.134/deploy
rm /tmp/anv*.jar
