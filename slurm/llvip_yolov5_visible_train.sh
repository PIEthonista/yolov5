#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_llvip_yolov5_visible
#SBATCH -p gp4d
#SBATCH -e train_TWCC_llvip_yolov5_visible.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=huiern214@gmail.com

srun python train.py --img 640 --batch 1 --data LLVIP.yaml --weights yolov5s.pt --device 0 --save-period 10 --name LLVIP_visible_export