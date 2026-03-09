#!/bin/bash
MODEL_DIR="/models/Qwen3-Embedding-0.6B"
if [ ! -d "$MODEL_DIR/.git" ]; then
    echo "Downloading model..."
    if [ -z "$HF_USERNAME" ] || [ -z "$HF_TOKEN" ]; then
        echo "Error: HF credentials not set"
        exit 1
    fi
    git clone "https://${HF_USERNAME}:${HF_TOKEN}@huggingface.co/Qwen/Qwen3-Embedding-0.6B" "$MODEL_DIR"
    echo "Download complete"
else
    echo "Model already exists, skipping"
fi
