#!/bin/bash

DatasetPath=data/SemanticKITTI
PredictionsPath=./log/Valid/predictions_1stage_ours/
DataConfig=./config/labels/semantic-kitti-mos.raw.yaml

python3 utils/evaluate_mos.py -d $DatasetPath \
                              -p $PredictionsPath \
                              -dc $DataConfig