#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_infrared_test
#SBATCH -p gp4d
#SBATCH -e test_TWCC_m3fd_yolov5_infrared_yx.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=gohyixian456@gmail.com


# 547221
# srun python val.py --img 320 --batch 32 --weights /work/u5832291/yixian/yolov5_edit/runs/train/YOLOv5s_m3fd_ir_tardal_baseline_20231202_yx/weights/best.pt --data m3fd_infrared.yaml --device 0 --verbose --task val --conf-thres 0.001 --save-txt --save-conf --name YOLOv5s_m3fd_ir_tardal_baseline_20231202_yx

# 548168
srun python val.py --img 320 --batch 32 --weights /work/u5832291/yixian/yolov5_edit/runs/train/YOLOv5s_m3fd_ir_tardal_baseline_val_set_removed_20231206_yx/weights/best.pt --data m3fd_infrared_val_set.yaml --device 0 --verbose --task val --conf-thres 0.001 --save-txt --save-conf --name YOLOv5s_m3fd_ir_tardal_baseline_val_set_removed_20231206_yx


