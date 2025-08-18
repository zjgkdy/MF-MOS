#!/bin/bash

DatasetPath=data/SemanticKITTI
Seq=08
DataConfig=./config/labels/semantic-kitti-mos.raw.yaml
Version=fuse # Version in ["moving", "movable", "fuse"] for predictions
# PredictionPath=log/Valid/ckpt_iou7612_1stage/
PredictionPath=log/Valid/ckpt_ours_1stage/

python3 utils/visualize_mos.py -d $DatasetPath \
                               -s $Seq \
                               -c $DataConfig \
                               -v $Version \
                               -p $PredictionPath
