#!/bin/bash
declare -a arr=("url1" "url2")

## now loop through the above array
for i in "${arr[@]}"
do
    if curl --output /dev/null --silent --head --fail "$i"; then
      echo "URL exists: $i"
    else
      echo "URL does not exist: $i"
    fi
done

