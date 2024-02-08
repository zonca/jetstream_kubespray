set -o nounset # fail if a variable is not defined
ansible-playbook --become -i inventory/$CLUSTER/hosts scale.yml  --flush-cache -b -v --limit "${CLUSTER}*" --extra-vars="supplementary_addresses_in_ssl_keys=[\"$IP\"]"
