#!/bin/sh

mkdir output

pandoc -s main.md -o output/src

date > output/.build_date.txt

echo "generated_at: $(date)" > variables.yml

mustache variables.yml index.output.html > output/index.html
mustache variables.yml README.output.md > output/README.md

