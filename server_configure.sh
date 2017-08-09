#!/bin/sh
echo "Config script" >> /tmp/vnf.log
echo "My IP:" $internal_floatingIp >> /tmp/vnf.log
echo "Server IP:" $server_internal_floatingIp >> /tmp/vnf.log
