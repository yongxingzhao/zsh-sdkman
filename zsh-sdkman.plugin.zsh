#!/usr/bin/env zsh

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [[ ! -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]]; then
  echo "sdkman not exist"
  return
else
  source $SDKMAN_DIR/bin/sdkman-init.sh 
fi

# completions directory for `sdk` command
local COMPLETIONS_DIR="${0:A:h}/completions"

# Only regenerate completions if does not exist or older than 24 hours
if [[ ! -f "$COMPLETIONS_DIR/_sdk" || ! $(find "$COMPLETIONS_DIR/_sdk" -newermt "24 hours ago" -print) ]]; then
	# TODO 
fi

# add completions to the FPATH
typeset -TUx FPATH fpath
fpath=("$COMPLETIONS_DIR" $fpath)
