#!/usr/bin/env bash
gpu_load=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)

case ${gpu_load} in
  [0-9])
    gpu_icon="󰝦";;
  [1-2][0-9])
    gpu_icon="󰪞";;
  [3-4][0-9])
    gpu_icon="󰪟";;
  [5-6][0-9])
    gpu_icon="󰪠";;
  [7-8][0-9])
    gpu_icon="󰪣";;
  9[0-4])
    gpu_icon="󰪤";;
  9[5-9]|100)
    gpu_icon="󰪥";;
  *)
    gpu_icon="󰪠";;
esac
echo "{\"icon\":\"$gpu_icon\",\"gpu_load_percentage\": $gpu_load,\"tooltip\":\"GPU: $gpu_load%\"}"
