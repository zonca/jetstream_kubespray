for i in $(seq 2 10)
do
    NODE="$CLUSTER-k8s-node-$i"
    #kubectl cordon $NODE
    #kubectl drain --ignore-daemonsets --delete-emptydir-data $NODE
    #openstack server shelve $NODE
    #openstack server unshelve $NODE
    #kubectl uncordon $NODE
done
