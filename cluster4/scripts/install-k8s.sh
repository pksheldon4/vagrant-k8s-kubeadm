#!/bin/sh
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt-get install -y kubelet=1.17.3-00 kubeadm=1.17.3-00 kubectl=1.17.3-00
sudo apt-mark hold kubelet kubeadm kubectl

kubeadm config images pull
