#!/bin/bash

set -e

echo Script params: "$@"

echo "$1" > /tmp/ludwig_model_tmpl

cat /tmp/ludwig_model_tmpl

sed 's/\[%/{{/g'   /tmp/ludwig_model_tmpl | sed 's/%\]/}}/g' > /tmp/ludwig_model

cat /tmp/ludwig_model

mkdir -p  "${MODEL_PATH}"

$2

$3