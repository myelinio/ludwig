#!/bin/bash

set -e

echo Script params: "$@"
echo "MODEL_PATH=${MODEL_PATH}"
echo "DATA_PATH=${DATA_PATH}"

echo "$1" > /tmp/ludwig_model_tmpl

cat /tmp/ludwig_model_tmpl

sed 's/\[%/{{/g'   /tmp/ludwig_model_tmpl | sed 's/%\]/}}/g' > /tmp/ludwig_model

cat /tmp/ludwig_model


mkdir -p  "${MODEL_PATH}"

ln -s ${DATA_PATH}/$2 ${MODEL_PATH}/$2

ludwig $3  --data_csv ${MODEL_PATH}/$2 --model_definition_file /tmp/ludwig_model    --output_directory ${MODEL_PATH} --output_directory ${MODEL_PATH} $4