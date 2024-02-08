set -o nounset # fail if a variable is not defined
ansible-playbook --become -i inventory/$CLUSTER/hosts cluster.yml -b -v --limit "${CLUSTER}*" --extra-vars="supplementary_addresses_in_ssl_keys=[\"$IP\"]"
