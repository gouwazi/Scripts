#!/bin/env bash
# 计算目录下文件数量

for i in "$1"/*; do echo $i; find $i | wc -l; done
