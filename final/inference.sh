#!/bin/bash

INPUT_FOLDER=$1
MODEL_FOLDER=$2
OUTPUT_FOLDER=$3

echo "Input Dataset Folder: $INPUT_FOLDER \n"

echo "Inferencing 3-Stage NN Model  ... \n"
python 3stage-nn-inference.py $INPUT_FOLDER $MODEL_FOLDER/3-stageNN $OUTPUT_FOLDER

echo "Inferencing 2-Stage NN+TabNet Model  ... \n"
python 2stage-nn-tabnet-inference.py $INPUT_FOLDER $MODEL_FOLDER/2-stageNN-TabNet $OUTPUT_FOLDER

echo "Inferencing Simple NN Old CV Model  ... \n"
python simple-nn-old-split-inference.py $INPUT_FOLDER $MODEL_FOLDER/simple-NN-Old-CV $OUTPUT_FOLDER

echo "Inferencing Simple NN New CV Model  ... \n"
python simple-nn-new-split-inference.py $INPUT_FOLDER $MODEL_FOLDER/simple-NN-New-CV $OUTPUT_FOLDER

echo "Inferencing 2-heads ResNet Model  ... \n"
python 2heads-ResNest-inference.py $INPUT_FOLDER $MODEL_FOLDER/2-heads-ResNet $OUTPUT_FOLDER

echo "Inferencing DeepInsight EfficientNet B3 NS Model  ... \n"
python deepinsight-efficientnet-lightning-v7-b3-inference.py $INPUT_FOLDER $MODEL_FOLDER/DeepInsight-EfficientNet-B3-NS $OUTPUT_FOLDER

echo "Inferencing DeepInsight ResNeSt V2 Model  ... \n"
python deepinsight-resnest-lightning-v2-inference.py $INPUT_FOLDER $MODEL_FOLDER//DeepInsight-ResNeSt-V2 $OUTPUT_FOLDER

exit 0;