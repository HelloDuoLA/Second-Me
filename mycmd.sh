# 1. llama 启动大模型
./llama.cpp/build/bin/llama-server --model /app/resources/model/output/gguf/Qwen2.5-0.5B-Instruct/model_old.gguf --port 8080

# 2.启动容器
make docker-up
