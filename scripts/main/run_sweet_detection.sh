# detection phase

# for humaneval
task="humaneval"
max_len=512
batch_size=20
top_p=0.95
n_sample=40
model=bigcode/starcoder
load_generations_path=outputs/generations.json
outputs_dir=outputs
gamma=0.25
delta=3.0
entropy_threshold=1.2
batch_size=50

# # for mbpp
# task="mbpp"
# max_len=2048
# batch_size=5
# top_p=0.95
# n_sample=20

# # for ds1000
# task="ds1000-all-completion"
# max_len=1024
# batch_size=10
# top_p=0.5
# n_sample=40

python main.py \
    --model $model \
    --use_auth_token \
    --task $task \
    --temperature 0.2 \
    --precision bf16 \
    --batch_size $batch_size \
    --allow_code_execution \
    --do_sample \
    --top_p $top_p \
    --n_samples $n_sample \
    --max_length_generation $max_len \
    --outputs_dir $outputs_dir \
    --load_generations_path $load_generations_path \
    --sweet \
    --gamma $gamma \
    --delta $delta \
    --entropy_threshold $entropy_threshold \
    --batch_size $batch_size