#!/bin/bash

TF_TYPE="cpu" # Default processor is CPU. If you want GPU, set to "gpu"
OS=$(uname -s | tr '[:upper:]' '[:lower:]')
VERSION="1.7.0"

mkdir -p ./jni
curl -L \
   "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow_jni-${TF_TYPE}-${OS}-x86_64-${VERSION}.tar.gz" |
   tar -xz -C ./jni

curl -L \
    -o lib/libtensorflow-${VERSION}.jar "https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-${VERSION}.jar"

