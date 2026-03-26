#!/bin/bash

# CCNU-thesis 初始化脚本
# 用于下载必要的字体资源文件

set -e

# 字体文件配置
FONT_DIR="font"
FONT_URLS=(
    "https://cos.huimengxinhe.com/font/%E6%96%B9%E6%AD%A3%E4%BB%BF%E5%AE%8B_GB2312.ttf"
    "https://cos.huimengxinhe.com/font/%E6%96%B9%E6%AD%A3%E5%B0%8F%E6%A0%87%E5%AE%8B%E7%AE%80%E4%BD%93.ttf"
)
# 字体文件重命名映射
FONT_NAMES=(
    "方正仿宋_GB2312.ttf"
    "方正小标宋简体.ttf"
)

# 颜色输出
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo "========================================"
echo "  CCNU-thesis 项目初始化"
echo "========================================"
echo ""

# 创建字体目录
if [ ! -d "$FONT_DIR" ]; then
    echo -e "${YELLOW}创建字体目录: $FONT_DIR${NC}"
    mkdir -p "$FONT_DIR"
else
    echo -e "${GREEN}字体目录已存在: $FONT_DIR${NC}"
fi

echo ""
echo "开始下载字体文件..."
echo ""

# 下载字体文件（使用 Python urllib，不依赖 curl/wget）
for i in "${!FONT_URLS[@]}"; do
    url="${FONT_URLS[$i]}"
    target_name="${FONT_NAMES[$i]}"
    encoded_name=$(basename "$url")
    temp_filepath="$FONT_DIR/$encoded_name"
    target_filepath="$FONT_DIR/$target_name"
    
    # 检查目标文件是否已存在
    if [ -f "$target_filepath" ]; then
        echo -e "${GREEN}✓ $target_name 已存在，跳过下载${NC}"
        continue
    fi
    
    # 检查临时文件是否存在（断点续传情况）
    if [ -f "$temp_filepath" ]; then
        echo -e "${YELLOW}→ 发现未重命名的文件，直接重命名${NC}"
        mv "$temp_filepath" "$target_filepath"
        echo -e "${GREEN}✓ $target_name 重命名成功${NC}"
        continue
    fi
    
    echo -e "${YELLOW}↓ 正在下载: $target_name${NC}"
    if python3 -c "
import urllib.request
import sys
try:
    urllib.request.urlretrieve('$url', '$temp_filepath')
    sys.exit(0)
except Exception as e:
    print(f'Error: {e}', file=sys.stderr)
    sys.exit(1)
"; then
        # 下载成功后重命名
        mv "$temp_filepath" "$target_filepath"
        echo -e "${GREEN}✓ $target_name 下载并重命名成功${NC}"
    else
        echo -e "${RED}✗ $target_name 下载失败${NC}"
        exit 1
    fi
done

echo ""
echo "========================================"
echo -e "${GREEN}  初始化完成！${NC}"
echo "========================================"
echo ""
echo "字体文件列表:"
ls -lh "$FONT_DIR"