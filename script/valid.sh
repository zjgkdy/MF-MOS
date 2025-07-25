#!/bin/bash

DatasetPath=data/SemanticKITTI
ModelPath=/home/luoteng/MF-MOS/ckpt/mfmos_ckpt_iou7612
SavePath=./log/Valid/predictions/
SPLIT=valid # valid or test

# If you want to use SIEM, set pointrefine on
export CUDA_VISIBLE_DEVICES=0 && python3 infer.py -d $DatasetPath \
                                                  -m $ModelPath \
                                                  -l $SavePath \
                                                  -s $SPLIT \
                                                  --movable # Whether to save the label of movable objects
                                                #   --pointrefine \
