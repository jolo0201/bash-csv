#!/bin/bash

#function for logging an input to csv
write_csv(){
    echo \"$1\" >> log.csv
}

echo "Type items to add on the csv file."
echo "Note: To end, leave an empty line."
echo "-----------------------------------"

while IFS= read -r -p "Item: " line; do
    [[ $line ]] || break  # break if line is empty
    write_csv $line
done

if [[ $? -eq 0 ]]
then
    echo "********************************"
    echo "CSV file appended."
    echo "********************************"
else
    echo "*********************************************************"
    echo "There were errors encountered."
    echo "*********************************************************"
fi