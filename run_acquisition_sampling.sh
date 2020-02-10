#!/bin/bash

# give permission for execution
chmod +x ./run_acquisition_sampling.sh

# execute run_realiz_fake_noise.m
cd corr_noise_generator/
octave run_realiz_fake_noise.m
echo "acquisition completed"

# execute run_data_sampler.py
cd ..
python run_data_sampler.py
echo "sampling/ sum completed"

exit 0

# loop through sub-directories
#for d in */ ; do
#	echo "$d"
#done

# go to corr_noise subdirectory
#ls corr_noise_generator/
