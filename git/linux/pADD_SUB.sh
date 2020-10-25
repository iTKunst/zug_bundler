#!/bin/bash
# shellcheck disable=SC2086
source LOG.sh

log_enter pADD_SUB

GIT=$1
DIR=$2

log_var GIT $GIT
log_var DIR $DIR

log_info Adding $DIR

git submodule add -f $GIT $DIR
log_var ?  $?

if [ $?  -ne 0 ]; then
  log_err Error adding sub module $GIT
  log_err Does it exist in the repo?
  exit $?
fi

git commit -am "Added the $DIR to the project."
log_var ?  $?

if [ $?  -ne 0 ]; then
  log_err Error committing sub module $GIT
  exit $?
fi

git push origin master
log_var ?  $?

if [ $?  -ne 0 ]; then
  log_err Error pushing the sub module $GIT
fi

log_exit pADD_SUB

exit $?
