#!/bin/sh -l

file="$1"
new_content="$2"
TAG="$3"

sed -i "/<!--START_$TAG-->/, /<!--END_$TAG-->/ {
    /<!--START_$TAG-->/! { 
    /<!--END_$TAG-->/! s|.*|${{ env.latest_project }}| 
  }
}" "$file"
