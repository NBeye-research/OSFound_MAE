pids=$(ps aux | grep "main_pretrain.py" | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "发现正在运行的训练进程，准备杀死进程$pids"
    kill -9 $pids
fi

