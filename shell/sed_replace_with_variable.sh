#!/bin/bash
#
# replace in place with variable
#
root='/path'
variables_file=app/assets/stylesheets/application/bootstrap/variables.scss
cd $root
git grep -E '#.*;' app/assets/stylesheets/application/views/ > lines.txt

number_color_pattern='(#.*;)'
var_color_pattern='(\$.*):'
file_name_pattern='(app.*scss):'
while read p; do
    # echo $p
    [[ $p =~ $file_name_pattern ]]
    file_name_matched=${BASH_REMATCH[1]}
    # echo $file_name_matched

    [[ $p =~ $number_color_pattern ]]
    number_color_matched=${BASH_REMATCH[1]}
    # echo $number_color_matched

    key_value=$(grep $number_color_matched $variables_file)
    echo $key_value
    [[ $key_value =~ $var_color_pattern ]]
    var_color_matched=${BASH_REMATCH[1]}
    echo $var_color_matched

    if [[ -n $var_color_matched ]]; then
       sed -i '' "s/$number_color_matched/$var_color_matched;/g" $file_name_matched
    fi
done < lines.txt
