#!/bin/bash
#SBATCH --partition=P02            # 使用するパーティション名
#SBATCH --nodes=1                  # ノード数
#SBATCH --gpus=1                   # 使用するGPU数
#SBATCH --time=00:30:00            # 最大実行時間
#SBATCH --job-name=test_run        # ジョブの名前
#SBATCH --output=output.log        # 出力ログファイル

echo "=== GPU Info ==="
nvidia-smi

echo "=== Start Python ==="
module load python/3.10  # 必要に応じて環境をロード（※環境に合わせて変更）
python test.py
