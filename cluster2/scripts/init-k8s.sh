#!/bin/sh
IFNAME=$1
ADDRESS="$(ip -4 addr show $IFNAME | grep "inet" | head -1 |awk '{print $2}' | cut -d/ -f1)"
sudo kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=$ADDRESS | grep 'kubeadm join' -A2 > /vagrant/scripts/kubeadm-join.sh
chmod +x /vagrant/scripts/kubeadm-join.sh
