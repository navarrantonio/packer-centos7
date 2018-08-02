#!/usr/bin/env bash

#install minimum required
yum install -y epel-release
yum install -y curl wget unzip mlocate java-1.8.0-openjdk java-1.8.0-openjdk-devel

#set java home
echo "export JAVA_HOME=/usr/lib/jvm/java/jre/" > /etc/profile.d/java.sh
chown -R root:root /etc/profile.d/java.sh
chmod 0444 /etc/profile.d/java.sh
source /etc/profile.d/java.sh

#dont need postfix
systemctl disable postfix

#cleanuo
yum clean all
rm -rf /var/cache/yum