#!/bin/sh

apt-get remove -y abiword gnumeric audacious pidgin sylpheed transmission-gtk

apt-get autoremove -y

apt-get clean
