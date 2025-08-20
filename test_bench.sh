export OPENAI_API_KEY=secret_abcdefg
export OPENAI_API_BASE="http://localhost:9000/v1"

python token_benchmark_ray.py \
--model "/root/.cache/modelscope/hub/models/Qwen/Qwen3-4B" \
--tokenizer "/home/uburst/ylm/models/Qwen/Qwen3-4B" \
--mean-input-tokens 100 \
--stddev-input-tokens 150 \
--mean-output-tokens 100 \
--stddev-output-tokens 10 \
--max-num-completed-requests 50 \
--timeout 600 \
--num-concurrent-requests 10 \
--results-dir "result_outputs" \
--llm-api openai \
--additional-sampling-params '{}'
