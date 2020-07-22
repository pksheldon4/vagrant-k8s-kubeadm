Vagrant project to create various Kubernetes clusters for learning using kubeadm.

This project contains Vagrant files for 4 different clusters

`cluster1` - Vagrantfile reates a fully functioning kubernetes cluster with 1 master and 2 worker nodes
`cluster2` - Vagrantfile creates a cluster that contains a functioning master and 1 worker node. A 2nd worker machine is created so you can practice joining a new node to a cluster.
`cluster3` - Vagrant file creates two machines configured with the basics, including Docker, but no kubernetes resources. It can be used to practice configuring a new Kubernetes cluster with kubeadm.
`cluster4` - Vagrant file creates a fully functioning kubernetes cluster with and older version of kubernetes installed. Use it to practice upgrading kubernetes on a running cluster.
