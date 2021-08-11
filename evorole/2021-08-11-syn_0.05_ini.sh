#!/bin/bash

#!!! adjust the time quota !!!

#SBATCH --time=02:00:00
#SBATCH --partition=gelifes
#SBATCH --ntasks=1
#SBATCH --nodes=1
#SBATCH --mem=5GB
#SBATCH --cpus-per-task=16

module load GCC --latest

datadir="/data/$(whoami)"
./bin/evorole --force param=2021-08-11-syn_0.05_ini.json rep=5 outdir=$datadir/2021-08-11-syn_0.05_ini
