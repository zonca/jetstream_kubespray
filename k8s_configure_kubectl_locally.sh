set -o nounset # fail if a variable is not defined
sed -i 's/10\.[[:digit:]]\+\.[[:digit:]]\+\.[[:digit:]]\+/'"$IP/g" inventory/$CLUSTER/artifacts/admin.conf
