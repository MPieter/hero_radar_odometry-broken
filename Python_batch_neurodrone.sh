#!/bin/bash
#PBS -m abe
#PBS -l walltime=12:0:0
#PBS -l nodes=1:ppn=8,gpus=1
module swap cluster/joltik
module load PyTorch/1.7.1-fosscuda-2020b
module load OpenCV/4.5.1-fosscuda-2020b-contrib
module load tensorboardX/2.2-fosscuda-2020b-PyTorch-1.7.1
cd ~/hero_radar_odometry
python train.py --pretrain models/under_the_radar_res2592.pt --config models/under_the_radar_neurodrone_res2592_hpc.json