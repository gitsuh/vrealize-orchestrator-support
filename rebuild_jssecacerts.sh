#!/bin/bash

mv /etc/vco/app-server/security/jssecacerts /etc/vco/app-server/security/jssecacerts.bak
keytool -keystore /etc/vco/app-server/security/jssecacerts -storepass "$(echo `cat /var/lib/vco/keystore.password`)" -alias dunes -genkey -keyalg RSA -validity 3650
chown vco:vco /etc/vco/app-server/security/jssecacerts
vro-configure.sh reset-authentication
service vco-configurator restart
