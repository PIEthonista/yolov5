#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_tardal_dt_fused_shipped_test
#SBATCH -p gp4d
#SBATCH -e train_TWCC_m3fd_yolov5_tardal_dt_fused_shipped_test.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com

# 549843
srun python val.py --img 320 --batch 16 --weights /work/u5832291/yixian/yolov5_edit/runs/train/YOLOv5s_m3fd_tardal_dt_fused_shipped_20231211/weights/best.pt --data m3fd_tardal_dt_fused_shipped.yaml --device 0 --verbose --task val --conf-thres 0.001 --save-txt --save-conf --name YOLOv5s_m3fd_tardal_dt_fused_shipped_20231211

