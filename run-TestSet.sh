#!/bin/sh
#
#  Reservation desired
#$ -R y
#
#  Reserve 8 CPUs for this job
#$ -pe parallel 32
#
#  Request 8G of RAM
#$ -l h_vmem=1G
#
#  Request it to run this long HH:MM:SS
#$ -l h_rt=00:59:00
#
#  Use /bin/bash to execute this script
#$ -S /bin/bash
#
#  Run job from current working directory
#$ -cwd
#
#  Send email when the job begins, ends, aborts, or is suspended
#$ -m beas

./panX.py -fn ./data/TestSet -sl TestSet-RefSeq.txt  -st 1 3 4 5 6 7 8 9 10 11 -t 32  > TestSet.log
## example for using soft core_gene and core_gene strain constraint list
#./panX.py -fn ./data/TestSet -sl TestSet-RefSeq.txt -csf ./data/TestSet/core_strain_list.txt -cg 0.7 -st 1 3 4 5 6 7 8 9 10 11 -t 32  > TestSet-cg0.7.log