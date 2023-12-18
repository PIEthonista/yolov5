#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J YOLOv5X_m3fd_tardal_tt_self_trained_20231214
#SBATCH -p gp4d
#SBATCH -e YOLOv5X_m3fd_tardal_tt_self_trained_20231214_test.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 552034
srun python val.py --img 320 --batch 16 --weights /work/u5832291/yixian/yolov5_edit/runs/train/YOLOv5X_m3fd_tardal_tt_fused_self_trained_20231214/weights/best.pt --data m3fd_tardal_tt_fused_self_trained.yaml --device 0 --verbose --task val --conf-thres 0.001 --save-txt --save-conf --name YOLOv5X_m3fd_tardal_tt_fused_self_trained_20231214

