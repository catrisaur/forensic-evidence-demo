#!/bin/bash

# Path to swap file and tool
SWAP_FILE="/mnt/swapfile.img"
OUTPUT_FILE="/tmp/swap_analysis.txt"

# Run swap_digger to analyze the swap file
swap_digger $SWAP_FILE > $OUTPUT_FILE

echo "Swap analysis complete. Results saved to $OUTPUT_FILE"
