#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_llvip_yolov5_visible_val
#SBATCH -p gp4d
#SBATCH -e val_TWCC_llvip_yolov5_visible.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=huiern214@gmail.com

srun python val.py --img 640 --batch 1 --weights /work/u5832291/huiern/yolov5/runs/train/LLVIP_visible_export/weights/last.pt --data LLVIP.yaml --device 0  --verbose --name LLVIP_visible_test_export