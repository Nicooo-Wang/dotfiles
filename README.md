find . -type f -size +50M -exec git lfs track {} \;

## install 
```
sudo apt install tldr -y
conda install tmux -y
```

## conda env
```
ENV_NAME=nano-vllm
conda create -n $ENV_NAME python=3.10 pytorch torchvision torchaudio pytorch-cuda=12.1 -c pytorch -c nvidia -y
conda activate $ENV_NAME
```
