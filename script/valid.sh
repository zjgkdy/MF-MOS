#!/bin/bash

DatasetPath=data/SemanticKITTI
ModelPath=/home/luoteng/MF-MOS/ckpt/mfmos_ckpt_ours
SavePath=./log/Valid/predictions_ours/
SPLIT=valid # valid or test

# If you want to use SIEM, set pointrefine on
export CUDA_VISIBLE_DEVICES=0 && python3 infer.py -d $DatasetPath \
                                                  -m $ModelPath \
                                                  -l $SavePath \
                                                  -s $SPLIT \
                                                  --movable \
                                                  --pointrefine \
