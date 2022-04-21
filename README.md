# bash-csv
Bash script for logging user inputs into a CSV file

## Steps on executing the file
- Open any Linux Terminal
- Locate the bash file directory
- Make sure the script is executable using this command
```
chmod +x ./csv.sh
```
- Run the file
```
./csv.sh
```

## Code
To log an input to a csv file, use this method.

```
write_csv(){
    echo \"$1\" >> log.csv
}
```
```
write_csv $line
```


