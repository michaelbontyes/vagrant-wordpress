#!/bin/bash
sshpass -p password ssh -oStrictHostKeyChecking=no livesync@theserver.edlfb.net /home/livesync/dev.sh
sshpass -p password scp livesync@theserver.edlfb.net:/home/livesync/dev.sql /vagrant/sql/dev.sql
cd /vagrant/wordpress/
/vagrant/wordpress/wp db export /vagrant/sql/local.sql 
/vagrant/wordpress/wp db import /vagrant/sql/dev.sql
/vagrant/wordpress/wp search-replace --network --url= theserver.edlfb.net theserver.edlfb.net