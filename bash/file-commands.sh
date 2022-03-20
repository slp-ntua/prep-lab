# Search inside file
grep "toyota" auto.csv
grep "toyota.*sedan" auto.csv # regex

# Get columns of files
cut -d, -f26 auto.csv

# Sort file
cut -d -f26 auto.csv | sort -n
sort auto.csv
sort -nr -k26 -t, auto.csv
sort -nr -k26 -t, auto.csv | grep bmw

# Unique occurences
cut -d, -f1 auto.csv | uniq

# Manipulate files
sed -r "s/hatchback/HATCHBACK/g" auto.csv
sed -r "/honda/s/hatchback/HATCHBACK/g" auto.csv

# Diff files
sed -r "s/hatchback/HATCHBACK/g" auto.csv > auto1.csv
sed -r "/honda/s/hatchback/HATCHBACK/g" auto.csv > auto2.csv
diff auto.csv auto1.csv
diff auto1.csv auto2.csv

# Awk for more complicated operations
awk -F, '$4 > 0.8' auto.csv
awk 'BEGIN{FS=","; OFS="\t"} {print $1,$2,$3,$4}' auto.csv
awk -F, 'BEGIN {OFS=","} {$4=$4 * 100; print}' auto.csv


# Complicated regex based processing. Convert CSV rows to latex table
cat auto.csv | \
    awk -F, 'BEGIN {OFS=","} {$4=$4 * 100; print}' | \
    sed 's/,/} \& {/g' | \
    sed 's/^/{/' | \
    sed 's/$/} \\\\\\hline/'


# If all else fails, make a python utility script
# Write a script in a python file
cat >chcase.py <<EOF
#!/usr/bin/env python
import argparse
import fileinput

parser = argparse.ArgumentParser(
    prog="chcase", description="Change letter case in file"
)
parser.add_argument("-u", "--upper", action="store_true", help="Change to upper case")
parser.add_argument(
    "files",
    metavar="FILE",
    nargs="*",
    help="files to read, if empty, stdin is used",
)
args = parser.parse_args()

process_fn = (lambda ln: ln.upper()) if args.upper else (lambda ln: ln.lower())

for ln in fileinput.input(args.files):
    print(process_fn(ln), end="")
EOF
# make it executable
chmod +x chcase.py
./chcase.py --upper auto.csv
cat auto.csv | ./chcase.py --upper
