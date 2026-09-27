# debug bash script
# use set -x to enable debugging
set -x # inside script to enable debugging or #! /bin/bash -x to enable debugging

#bash -x script.sh to enable debugging

# set +x to disable debugging
# set -e to exit script if any command fails
# set -u to exit script if any variable is unset
# set -o pipefail to exit script if any command in a pipeline fails
set -euo pipefail
