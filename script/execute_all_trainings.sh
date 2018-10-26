#!/bin/bash


cd /src/python/

array=(`ls /dataset/`)

len=${#array[*]}

EPOCHS=1
NUM_SAMPLES=10

i=0
while [ $i -lt $len ]; do
echo "$i: ${array[$i]}"
python traduction.py /dataset/${array[$i]} --num_samples $NUM_SAMPLES --epochs $EPOCHS
let i++
done

