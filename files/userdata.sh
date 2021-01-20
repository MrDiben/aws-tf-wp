#!/bin/bash
#  Change ssh port
sudo perl -pi -e 's/^#?Port 22$/Port 345/' /etc/ssh/sshd_config
sudo service sshd restart || service ssh restart
