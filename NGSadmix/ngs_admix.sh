#!/bin/bash
#name: NGS_admix_whitelist.sh
#SBATCH -p medium # partition (queue)
#SBATCH -N 1 # (leave at 1 unless using multi-node specific code)
#SBATCH --mem-per-cpu=30g
#SBATCH -n 5 # number of cores
#SBATCH --job-name="NGS" # job name
#SBATCH --mail-user=mnr006@bucknell.edu # address to email
#SBATCH --mail-type=ALL # mail events (NONE, BEGIN, END, FAIL, ALL)

#Making a loop to run K values 1-10, 10 times
for x in 1:10
do
for y in 1:10
do 
~/Software/NGSadmix -likes dataset1_genolike_minMAF_minInd113_total226_quality_whitelist.beagle.gz -minMaf 0.05 -K $y -outfiles NGSadmix_K_${y}_run_${x} -minInd 113
done
done


