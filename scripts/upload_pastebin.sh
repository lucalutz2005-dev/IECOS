#!/bin/bash
postBody="api_dev_key=$2&api_user_key=$3&api_paste_expire_date=1Y&api_paste_private=0&api_paste_name=IECOS.lua&api_paste_format=lua&api_option=paste"
cat "$1" | sed '1s/^/api_paste_code=/g' | sed 's/$/\%0A/g' | curl -d @- -d "$postBody" -s https://pastebin.com/api/api_post.php | sed 's/https:\/\/pastebin.com\///'
