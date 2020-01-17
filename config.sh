#!/bin/bash/printf

echo "Adding environment..."
while test $# -gt 0; do
  case $1 in
    -p)
      shift
        export STOREPASS=$1
        printf "\xE2\x9C\x94 STOREPASS added\n"
      shift
      ;;
    *)
      echo "$1 is invalid flag!"
      return 1;
      ;;
  esac
done  
echo "Successfully added environment!"