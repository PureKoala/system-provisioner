## 开机启动程序

TODO

- applications
  - flameshot
  - optimus manager
  - latte
- scripts
  - aria2
  - clash-dashboard
  - oled-brightness


## ansible

### 运行配置

```shell
sudo pacman -S ansible sshpass cowsay
```

安装模块:

```shell
ansible-galaxy collection install -r /path/to/requirements.yaml
```

TODO: 重定向输出到另一个端口 https://stackoverflow.com/questions/41194021/how-can-i-show-progress-for-a-long-running-ansible-task