terraform destroy -auto-approve -var-file=cluster.tf -var "cluster_name=${CLUSTER/_/-}" ../../contrib/terraform/openstack
