#!binbash

mkdir -p results  # Ensure the results folder exists

for file in Contracts.asm; do
    filename=$(basename -- $file)
    name=${filename%.}  # Remove .asm extension
    echo Analyzing $file...
    myth a --bin -f $file --execution-time 3600  results$name.txt
done
