 #!/bin/bash
# shellcheck disable=SC2086
source ./$BNDL_DIR/log/linux/LOG.sh

mSET_PATH() {

	log_enter mSET_PATH

	subPATH=$PWD/Exe:$PWD/Env

	if echo "$PATH" | grep -q "$subPATH" 1>nul; then
		log_info "PATH already set for project";
	else
		log_info "PATH not yet set for project";
		echo "export PATH=$subPATH:$PATH">path.txt;
		export PATH=$subPATH:$PATH
		log_cmd "Please run 'source path.txt'"
	fi

	log_exit mSET_PATH
}
