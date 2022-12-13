DATA_DIR='my_dataset_dir'

# import os
# print os.getenv("USER")
# print os.getenv("SUDO_USER")

#!/bin/bash
python3 -m train \
  --gin_configs=configs/360.gin \
  --gin_bindings="Config.data_dir = '${DATA_DIR}'" \
  --gin_bindings="Config.checkpoint_dir = '${DATA_DIR}/checkpoints'" \
  --logtostderr


# python -m train \
#   --gin_configs=configs/360.gin \
#   --gin_bindings="Config.data_dir = 'my_dataset_dir'" \
#   --gin_bindings="Config.checkpoint_dir = 'my_dataset_dir/checkpoints'" \
#   --logtostderr