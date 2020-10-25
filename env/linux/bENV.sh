#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter bENV

source env.sh
source bENV_DIR.sh
source bENV_GIT.sh
source bENV_NAME.sh

log_exit bENV

return 0