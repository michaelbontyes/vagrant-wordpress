#!/bin/bash
sshpass -p password rsync -e ssh -az --progress --ignore-existing livesync@theserver.edlfb.net:/var/www/vhosts/theserver.edlfb.net/wp-content/uploads/ /vagrant/wordpress/wp-content/uploads/
