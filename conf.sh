#!/bin/bash
# https://stackoverflow.com/questions/5955548/how-do-i-use-sed-to-change-my-configuration-files-with-flexible-keys-and-values
replace () {
   file=$1
   var=$2
   new_value=$3
   awk -v var="$var" -v new_val="$new_value" 'BEGIN{FS=OFS="="}match($1, "^\\s*" var "\\s*") {$2=" " new_val}1' "$file"
}

# Call the replace() function with the necessary parameters
replace "conf.ini" "my_var" "NEW VALUE" 