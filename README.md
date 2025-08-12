find . -type f -size +50M -exec git lfs track {} \;

## ssh
```
# 使用固定的随机种子（仅用于演示，实际不安全）
echo "固定的种子字符串" | ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_rsa -N "" -C "lixiamomo@outlook.com" 2>/dev/null
```
```
```
