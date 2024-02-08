set -o nounset # fail if a variable is not defined
for i in $(seq 2 10)
do
    # with floating IP
    # NODE="$CLUSTER-k8s-node-$i"
    # without floating IP
    NODE="$CLUSTER-k8s-node-nf-$i"
    #kubectl cordon $NODE
    #kubectl drain --ignore-daemonsets --delete-emptydir-data $NODE
    #openstack server shelve $NODE
    #openstack server unshelve $NODE
    #kubectl uncordon $NODE
done
