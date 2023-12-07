#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_infrared
#SBATCH -p gp4d
#SBATCH -e train_TWCC_m3fd_yolov5_infrared_yx.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# srun python train.py --img 640 --batch 1 --data m3fd.yaml --weights yolov5s.pt --device 0 --save-period 20 --name M3FD_infrared_export

# 546577
# 547823
srun python train.py --img-size 320 --batch-size 16 --epochs 300 --workers 8 --data m3fd_infrared.yaml --weights '' --cfg /work/u5832291/huiern/yolov5/models/yolov5s.yaml --device 0 --save-period 20 --name YOLOv5s_m3fd_ir_tardal_baseline_val_set_removed_20231206_yx