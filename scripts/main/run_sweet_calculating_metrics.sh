task="humaneval"
human_fname=outputs_human/evaluation_results.json
machine_fname=outputs/evaluation_results.json

python calculate_auroc_tpr.py \
    --task $task \
    --human_fname $human_fname \
    --machine_fname $machine_fname
