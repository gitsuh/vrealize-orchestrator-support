# vrealize-orchestrator-support scripts


-rebuild_jssecacerts.sh-
If your filesystem fills up on the appliance and you find yourself with an empty jssecacerts file then you need to rebuild it.

1. Remove jssecacerts

2. Recreate it via: keytool -keystore /etc/vco/app-server/security/jssecacerts -storepass <STORE_PASS> -alias dunes -genkey -keyalg RSA -validity 3650

Two things are different here from what we did before: <STORE_PASS> is not dunesdunes, take it from /var/lib/vco/keystore.password and parameter: -keyalg RSA

3. chown vco:vco jssecacerts

4. Execute: vro-configure.sh reset-authentication

5. Restart configurator
