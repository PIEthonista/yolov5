#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_visible_infer
#SBATCH -p gp4d
#SBATCH -e infer_TWCC_m3fd_yolov5_visible.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=huiern214@gmail.com

srun python detect.py --weights /work/u5832291/huiern/yolov5/runs/train/M3FD_visible_export2/weights/last.pt --source /work/u5832291/huiern/m3fd/visible/detect.txt --data m3fd.yaml --device 0 --name M3FD_visible_infer_export --save-txt --save-csv