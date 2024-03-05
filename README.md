# FileCompressor
这个脚本用于批量压缩指定文件夹中的文件为不同格式的压缩文件。

## 如何使用

1. 将脚本文件 `compress.sh` 下载到您的Linux系统中。
2. 使用文本编辑器打开 `compress.sh` 文件，并根据您的需求修改源文件夹和目标文件夹的路径。
3. 在终端中导航到包含 `compress.sh` 文件的目录。
4. 运行以下命令来执行脚本：

```bash
chmod +x compress.sh	# 给执行权限
./compress.sh	        # 运行
```

脚本将会按照您指定的路径将文件**逐个压缩**为不同格式的压缩文件，并将它们放置在指定的目标文件夹中。

## 支持的压缩格式

- bz2
- bz
- gz
- zip
- rar
- 7z
- tar
- war
- jar

## 注意事项

- 在运行脚本之前，请确保已安装相应的压缩软件包（例如，对于RAR和7z格式，需要安装rar和p7zip软件包）。
- 请确保系统中已安装Java Development Kit（JDK），脚本使用`jar`命令进行打包。
- 如果您需要其他压缩格式或有特殊需求，请根据您的需要修改脚本。
