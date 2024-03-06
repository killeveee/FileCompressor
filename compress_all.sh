#!/bin/bash

# 定义要压缩的文件夹路径和目标压缩文件夹路径
source_folder="/root/tmp/work"
target_folder="/root/tmp/work/compression"

# 确保目标压缩文件夹存在
mkdir -p "$target_folder"

# 压缩为bz2格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为bz2格式: $filename_without_extension"
        tar -cjf "$target_folder/$filename_without_extension.tar.bz2" -C "$(dirname "$file")" "$(basename "$file")"  
        # 压缩文件为bz2格式
    fi
done

# 压缩为bz格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为bz格式: $filename_without_extension"
        tar -cjf "$target_folder/$filename_without_extension.tar.bz" -C "$(dirname "$file")" "$(basename "$file")"  
        # 压缩文件为bz格式
    fi
done

# 压缩为gz格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为gz格式: $filename_without_extension"
        tar -czf "$target_folder/$filename_without_extension.tar.gz" -C "$(dirname "$file")" "$(basename "$file")"  
        # 压缩文件为gz格式
    fi
done

# 压缩为zip格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为zip格式: $filename_without_extension"
        zip -j "$target_folder/$filename_without_extension.zip" "$file"  
        # 压缩文件为zip格式
    fi
done

# 压缩为rar格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为rar格式: $filename_without_extension"
        rar a -ep "$target_folder/$filename_without_extension.rar" "$file"  
        # 压缩文件为rar格式
    fi
done

# 压缩为7z格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为7z格式: $filename_without_extension"
        7za a "$target_folder/$filename_without_extension.7z" "$file"  
        # 压缩文件为7z格式
    fi
done

# 压缩为tar格式
for file in "$source_folder"/*
do
    if [ -f "$file" ]; then  
        # 检查文件是否存在
        filename=$(basename "$file")  
        # 获取文件名
        filename_without_extension="${filename%.*}"  
        # 移除文件扩展名
        echo "压缩文件为tar格式: $filename_without_extension"
        tar -cf "$target_folder/$filename_without_extension.tar" -C "$(dirname "$file")" "$(basename "$file")"  
        # 压缩文件为tar格式
    fi
done


# 压缩为war和jar格式
for file in "$source_folder"/*.jsp
do
    if [ -f "$file" ]; then     # 检查文件是否存在
        # 获取文件名
        filename=$(basename "$file")
        # 移除文件扩展名
        filename_without_extension="${filename%.*}"
        
        echo "压缩文件为war格式: $filename_without_extension"
        # 压缩文件为war格式
        jar -cf "$target_folder/$filename_without_extension.war" -C "$(dirname "$file")" "$(basename "$file")"
        
        echo "压缩文件为jar格式: $filename_without_extension"
        # 压缩文件为jar格式
        jar -cf "$target_folder/$filename_without_extension.jar" -C "$(dirname "$file")" "$(basename "$file")"
    fi
done

echo "完成压缩过程。"
