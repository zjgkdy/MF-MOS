#!/bin/bash

DatasetPath=data/SemanticKITTI
# PredictionsPath=./log/Valid/ckpt_iou7612_1stage/
PredictionsPath=./log/Valid/ckpt_ours_1stage/
DataConfig=./config/labels/semantic-kitti-mos.raw.yaml

python3 utils/evaluate_mos.py -d $DatasetPath \
                              -p $PredictionsPath \
                              -dc $DataConfig