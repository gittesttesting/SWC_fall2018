#!/bin/bash

inp=$1
col=$2
yr=$3
opt=$4

cut -f1,3,$col $inp |grep $yr | sort -n -k3 | tail -n 1 > $opt
