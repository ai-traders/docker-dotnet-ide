#!/bin/bash

###########################################################################
# This script must be run after ide linux user uid and gid are set.
# Put here any chown commands.
###########################################################################

set +e
for id_rsa_file in "${ide_home}/.ssh/"*"id_rsa"; do
  if [ -f "${id_rsa_file}" ]; then
    chown ide:ide "${id_rsa_file}"
    chmod 0600 "${id_rsa_file}"
  fi
done
