#!/bin/bash
for seed_num in 1 2 3; do
    metrics_file=$(find outputs/memberA_complex_v4 -path "*seed${seed_num}*" -type f -name "metrics.csv" | head -1)
    if [ -f "$metrics_file" ]; then
        cp "$metrics_file" "outputs/memberA_complex_results/seed${seed_num}_metrics.csv"
        echo "✅ Successful copying：$metrics_file -> outputs/memberA_complex_results/seed${seed_num}_metrics.csv"
    else
        echo "⚠️ The metrics.csv file corresponding to seed${seed_num} was not found."
    fi
done
echo "📌All seed files have been copied!"
