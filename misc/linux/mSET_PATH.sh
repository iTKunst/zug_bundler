 #!/bin/bash
# shellcheck disable=SC2086
source ./Bundler/log/linux/LOG.sh

log_enter mSET_PATH

subPATH=$PWD/Exe:$PWD/Env
 
if echo "$PATH" | grep -q "$subPATH" 1>nul; then
  log_info "PATH already set for project";
else
  log_info "PATH not yet set for project";
  echo "export PATH=$subPATH:$PATH">path.txt;
  log_cmd "Please run 'source path.txt', then run pCLONE.sh"
fi

log_exit mSET_PATH
