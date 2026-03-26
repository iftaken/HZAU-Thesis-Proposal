# 心河Paper学位论文 LaTeX 模板

> 🎯 **专为心河Paper平台优化的 LaTeX 论文模板**

## 📋 简介

这是心河Paper官方推荐的学位论文 LaTeX 模板，符合国内高校学位论文的常见格式规范。

使用本模板编写的论文，在 [**心河Paper平台**](https://paper.huimengxinhe.com) 可获得最佳的在线预览支持。

---

## 📁 文件结构规范

使用本模板时，请确保包含以下**必需文件**：

```
xinhe-thesis/
├── main.cls              # 文档类文件（模板核心，必需）
├── main.tex              # 主文件（必需）
├── references.bib        # 参考文献数据库（必需）
├── main.pdf              # 编译后的PDF（用于预览模板效果）
├── .latexmkrc            # latexmk 编译配置
├── README.md             # 本文件
├── chapters/             # 章节文件夹
│   ├── abstract.tex      # 中英文摘要
│   ├── chapter1.tex      # 第一章：绪论
│   ├── chapter2.tex      # 第二章
│   ├── conclusion.tex    # 结论与展望
│   ├── appendix.tex      # 附录
│   └── acknowledgement.tex # 致谢
└── Fig/                  # 图片文件夹（统一存放所有图片素材）
```

### 重要规范

| 项目 | 说明 |
|------|------|
| `main.cls` | 模板核心文件，**必须保留**，定义了论文格式 |
| `main.tex` | 论文主文件，**必须保留**，填写论文基本信息 |
| `references.bib` | 参考文献数据库，**必须保留** |
| `main.pdf` | 可放入仓库用于展示模板效果预览 |
| `Fig/` | **所有图片素材统一放在此目录**进行管理 |

---

## 🚀 快速开始

### 1. 安装 Tectonic

本项目统一使用 [Tectonic](https://tectonic-typesetting.github.io/) 进行编译。

```bash
# 使用 cargo 安装
cargo install tectonic

# 或使用包管理器
# macOS
brew install tectonic

# Windows (Scoop)
scoop install tectonic
```

### 2. 安装字体

模板使用以下字体：

**中文字体：**
- SimSun (宋体) - 正文
- SimHei (黑体) - 标题

**英文字体：**
- Times New Roman - 英文正文
- Arial - 英文无衬线
- Courier New - 英文等宽

### 3. 编译文档

```bash
# 使用 tectonic 编译（自动处理依赖）
tectonic main.tex
```

---

## ✏️ 使用方法

### 修改论文信息

在 `main.tex` 中填写论文基本信息：

```latex
\title{你的论文题目}
\author{你的姓名}
\university{XX大学}
\college{XX学院}
\major{XX专业}
\advisor{XXX教授}
\studentid{20XXXXXXXX}
```

### 编写章节

在 `chapters/` 目录下创建或编辑 `.tex` 文件：

```latex
\chapter{章节标题}
\section{小节标题}
这里是正文内容...
```

### 插入图片

**所有图片请统一放入 `Fig/` 目录**，然后使用：

```latex
\begin{figure}[htbp]
    \centering
    \includegraphics[width=0.8\textwidth]{Fig/example}
    \caption{图片标题}
    \label{fig:example}
\end{figure}
```

### 添加参考文献

在 `references.bib` 中添加文献条目，然后在正文中引用：

```latex
\cite{key}  % 引用文献
```

---

## 📐 格式规范

| 项目 | 设置 |
|------|------|
| 纸张 | A4 (210mm × 297mm) |
| 页边距 | 上下左右 2.5cm |
| 正文字体 | 宋体 小四 (12pt) |
| 行距 | 1.5倍 |
| 章标题 | 黑体 小二 (18pt)，居中 |
| 节标题 | 黑体 三号 (16pt) |

---

## 🛠️ 常用命令

```bash
# 编译
tectonic main.tex

# 清理辅助文件
rm -f main.aux main.log main.out main.toc main.bbl main.blg
```

---

## 🌟 心河Paper平台支持

本模板已针对 [**心河Paper平台**](https://paper.huimengxinhe.com) 进行优化：

- ✅ 完美支持在线 LaTeX 预览
- ✅ 符合心河Paper论文规范
- ✅ 提供模板效果预览

---

## 📚 依赖宏包

模板已自动加载以下常用宏包：
- `ctex` - 中文支持
- `geometry` - 页面设置
- `graphicx` - 图片插入
- `amsmath` - 数学公式
- `booktabs` - 专业表格
- `hyperref` - 超链接
- `natbib` - 参考文献

---

## ⚠️ 注意事项

1. **必须保留** `main.cls`、`main.tex`、`references.bib` 三个核心文件
2. **图片统一存放**在 `Fig/` 目录下，便于管理
3. 确保系统安装了所需的 Windows 中文字体
4. 使用 XeLaTeX 编译以支持中文
5. 修改章节后需要多次编译以更新交叉引用
6. 添加新参考文献后需要运行 `bibtex`

---

## 📖 参考资料

- 《LaTeX入门》刘海洋
- [CTeX 论坛](https://ctex.org)
- [LaTeX Project](https://www.latex-project.org)

---

## 📄 许可证

本模板仅供学术交流使用，请根据所在学校的具体要求进行调整。
