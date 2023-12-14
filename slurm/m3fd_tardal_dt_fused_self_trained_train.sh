#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_tardal_dt_fused_self_trained
#SBATCH -p gp4d
#SBATCH -e train_TWCC_m3fd_yolov5_tardal_dt_fused_self_trained.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 551181
srun python train.py --img-size 320 --batch-size 16 --epochs 300 --workers 8 --data m3fd_tardal_dt_fused_self_trained.yaml --weights '' --cfg /work/u5832291/yixian/yolov5_edit/models/yolov5s.yaml --device 0 --save-period 20 --name YOLOv5s_m3fd_tardal_dt_fused_self_trained_20231214

# 551103
# srun python train.py --img-size 320 --batch-size 16 --epochs 300 --workers 8 --data m3fd_tardal_dt_fused_self_trained.yaml --weights '' --cfg /work/u5832291/yixian/yolov5_edit/models/yolov5x.yaml --device 0 --save-period 20 --name YOLOv5X_m3fd_tardal_dt_fused_self_trained_20231214