#!/bin/bash

#SBATCH -A MST111109
#SBATCH -J TWCC_m3fd_yolov5_infrared_infer
#SBATCH -p gp4d
#SBATCH -e infer_TWCC_m3fd_yolov5_infrared.txt
#SBATCH -c 4
#SBATCH --gres=gpu:1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=huiern214@gmail.com

srun python detect.py --weights /work/u5832291/huiern/yolov5/runs/train/M3FD_infrared_export/weights/last.pt --source /work/u5832291/huiern/m3fd/infrared/detect.txt --data m3fd.yaml --device 0 --name M3FD_infrared_infer_export --save-txt --save-csv