#!/bin/sh
echo $HOME
mkdir -p $HOME/.kube
sudo cp /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
sudo cp $HOME/.kube/config /vagrant/kube.config


