#!/bin/bash

return1(){
  return 1
}

retry() {
    MAX_RETRY=3
    n=0
    until [ $n -ge $MAX_RETRY ]
    do
      echo "starting '$@' "
      "$@" && break
      n=$[$n+1]
      echo "Sleeping 2"
      sleep 2
    done
    if [ $n -ge $MAX_RETRY ]; then
      echo "failed: ${@}" >&2
      exit 1
    fi
}
retry sh nofile.sh ls
# retry exit 1


# cmd="
# echo ""pp""
# exit 1
# "
# retry $cmd
echo "Completed"