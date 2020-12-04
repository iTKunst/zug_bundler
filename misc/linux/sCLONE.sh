#!/bin/bash
# shellcheck disable=SC2086

export BASE=
source sGET_BASE.sh

echo BASE is $BASE

git clone "$BASE/sec_freeipa.git" "./sec_freeipa"
git clone "$BASE/sec_keycloak.git" "./sec_keycloak"
git clone "$BASE/sec_network.git" "./sec_network"
git clone "$BASE/sec_pgadmin.git" "./sec_pgadmin"
git clone "$BASE/sec_postgres.git" "./sec_postgres"
git clone "$BASE/sec_portainer.git" "./sec_portainer"
git clone "$BASE/sec_reactjs.git" "./sec_reactjs"
git clone "$BASE/sec_system.git" "./sec_system"
