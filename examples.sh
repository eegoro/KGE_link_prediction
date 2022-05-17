#!/bin/bash

python3.5 run.py --do_train --do_valid --do_test --evaluate_train --model ComplEx -n 128 -b 512 -d 1000 -g 500 -a 1.0 -adv -lr 0.001 --max_steps 300 --cpu_num 2 --test_batch_size 32 -de -dr -r 0.000002

#CUDA_VISIBLE_DEVICES=0 python3.5 run.py --do_train --cuda --do_valid --do_test --evaluate_train \
#  --model TransE -n 128 -b 512 -d 2000 -g 20 -a 1.0 -adv \
#  -lr 0.0001 --max_steps 300000 --cpu_num 2 --test_batch_size 32
#
#CUDA_VISIBLE_DEVICES=1 python3.5 run.py --do_train --cuda --do_valid --do_test --evaluate_train \
#  --model DistMult -n 128 -b 512 -d 2000 -g 500 -a 1.0 -adv \
#  -lr 0.001 --max_steps 300000 --cpu_num 2 --test_batch_size 32 -r 0.000002
#
#CUDA_VISIBLE_DEVICES=2 python3.5 run.py --do_train --cuda --do_valid --do_test --evaluate_train \
#  --model RotatE -n 128 -b 512 -d 1000 -g 20 -a 1.0 -adv \
#  -lr 0.0001 --max_steps 300000 --cpu_num 2 --test_batch_size 32 -de
#
#CUDA_VISIBLE_DEVICES=3 python3.5 run.py --do_train --cuda --do_valid --do_test --evaluate_train \
#  --model ComplEx -n 128 -b 512 -d 1000 -g 500 -a 1.0 -adv \
#  -lr 0.001 --max_steps 300000 --cpu_num 2 --test_batch_size 32 -de -dr -r 0.000002

CUDA_VISIBLE_DEVICES=1 python run.py --do_train --cuda --do_valid --do_test --evaluate_train --model ComplEx -n 128 -b 512 -d 200 -g 20 -a 1.0 -adv  -lr 0.001 --max_steps 300000 --cpu_num 2 --test_batch_size 32 -de -dr -r 0.000002 --valid_steps 1000 --log_steps 1000 --test_log_steps 10000

CUDA_VISIBLE_DEVICES=0 python run.py --do_train --cuda --do_valid --do_test --evaluate_train --model TransE -n 128 -b 512 -d 200 -g 10 -a 1.0 -adv -lr 0.1 --max_steps 3000000 --cpu_num 2 --test_batch_size 32 --valid_steps 1000 --log_steps 1000 --test_log_steps 10000 -r 0.01