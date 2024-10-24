#!/bin/bash

output_dir="Output"

if [ -n "$2" ]; then
    output_dir="$2"
fi

mkdir -p "$output_dir"

c_files=("$1"/*.c)
ok=false

for file in "${c_files[@]}"; do
    if [ -f "$file" ]; then
        ok=true
        fisier=$(basename -- "$file")
        nume_fisier="${fisier%.*}"
        fisier_out="$output_dir/$nume_fisier"

        gcc "$file" -o "$fisier_out" 2> "$fisier_out.err"
        rezultat=$?
        
        if [ $rezultat -eq 0 ]; then
            echo " $fisier compilat!"

            ./"$fisier_out" > "$fisier_out.out"

        else
            echo " $fisier nu s-a putut compila. Vezi $fisier.err pt detalii XD."
        fi
    fi
done

if [ "$ok" = false ]; then
    echo "Niciun fisier cu extensia c gasit"
    exit 1
fi

find "$output_dir" -type f -name "*.err" -size 0 -exec rm {} \;

find "$output_dir" -type f ! -name "*.out" ! -name "*.err" -exec rm {} \;
