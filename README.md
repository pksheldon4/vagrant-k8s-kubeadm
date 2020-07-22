
Vagrant project to create various Kubernetes clusters for learning using kubeadm.
It requires VirtualBox and vagrant to be installed.

More about Vagrant can be found [here](https://www.vagrantup.com/intro/getting-started)


This project contains Vagrant files and configuration for for 4 different kubernetes clusters

- `cluster1` -  Creates a fully functioning kubernetes cluster with 1 master and 2 worker nodes.

- `cluster2` - Vagrantfile creates a cluster that contains a functioning master and 1 worker node. A 2nd worker machine is created so you can practice joining a new node to a cluster.

- `cluster3` - Vagrant file creates two machines configured with the basics, including Docker, but no kubernetes resources. It can be used to practice configuring a new Kubernetes cluster with kubeadm.

- `cluster4` - Vagrant file creates a fully functioning kubernetes cluster with and older version of kubernetes installed. Use it to practice upgrading kubernetes on a running cluster.


The following are useful commands for working with the clusters.
> `vagrant up` - This will provision the machines and run the scripts creating the cluster as necessary.

> `vagrant suspend`- This will shutdown the machines and save their state. They can be restarted by re-running `vagrant up`

> `vagrant halt && vagrant delete` - This will stop and delete the vms. This would be necessary for clusters 2-4 when practicing Installing or updating kubernetes.

> `vagrant ssh cluster1-master1` - This allows you to ssh into the vm specified. When inside the vm, the current folder is mounted as `/vagrant/` and the scripts can be access from that directory.

** Troubleshooting **
- Depending on the machine, I've occasionally seen issues with `clusterX-worker1` not being able to join the cluster because the `kube-apiserver` not being fully functional when the join command was executed on the worker. If this occurs, you can wait until `k get nodes` shows a `Ready` status for the `clusterX-master1` node.  The, `vagrant ssh clusterX-worker1` and run the join script using `sudo /vagrant/scripts/kubeadm-join.sh`




** The project makes use of [direnv](https://direnv.net/) to set the KUBECONFIG environment variable for whichever cluster you're currently working with. If you don't have that installed, you can source the `.envrc` file manually.