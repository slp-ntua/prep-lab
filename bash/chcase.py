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
