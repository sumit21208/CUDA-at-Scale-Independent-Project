#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <image|signal> <path>"
    exit 1
fi

./cuda_signal_processing $1 $2
