vrealize-orchestrator-support Scripts
===================


A collection of scripts used to troubleshoot, repair, and enhance VMware vRealize Orchestrator Appliance.

----------


#### <i class="icon-file"></i> rebuild_jssecacerts.sh
-------------

This script will rebuilt damaged jseccacerts file using the following steps:

> 1. Remove jssecacerts
> 2. Recreate it via: keytool -keystore /etc/vco/app-server/security/jssecacerts -storepass <STORE_PASS>
> -alias dunes -genkey -keyalg RSA -validity 3650   Two things are different here from what we did before: <STORE_PASS> is not
> dunesdunes, take it from /var/lib/vco/keystore.password and parameter:
> -keyalg RSA
> 3. chown vco:vco jssecacerts
> 4. Execute: vro-configure.sh reset-authentication
> 5. Restart configurator
