# dpo_pipeline.sh
python lpm_kernel/L2/dpo/dpo_data.py && \
python lpm_kernel/L2/dpo/dpo_train.py --base_model_path /app/resources/model/output/merged_model/Qwen2.5-0.5B-Instruct \
    --num_train_epochs 20 --learning_rate 5e-6 --lora_r 8 --lora_alpha 16 --batch_size 1 && \
python lpm_kernel/L2/merge_lora_weights.py \
    --base_model_path "resources/model/output/merged_model" \
    --lora_adapter_path "resources/model/output/dpo_model/adapter" \
    --output_model_path "resources/model/output/dpo_model/merged_model"