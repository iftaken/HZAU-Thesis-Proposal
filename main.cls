% ============================================================
% 心河大学学位论文 LaTeX 文档类模板
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2026/03/11 v1.0 University Thesis Template]

% ------------------------------------------------------------
% 选项处理
% ------------------------------------------------------------
\DeclareOption{print}{\PassOptionsToClass{twoside}{ctexbook}}
\DeclareOption{draft}{\PassOptionsToClass{draft}{ctexbook}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ExecuteOptions{}
\ProcessOptions\relax

% ------------------------------------------------------------
% 基础文档类 (ctexbook 提供中文支持)
% ------------------------------------------------------------
\LoadClass[UTF8,a4paper,12pt,openany]{ctexbook}

% ------------------------------------------------------------
% 页面设置
% ------------------------------------------------------------
\RequirePackage{geometry}
\geometry{
    paperwidth=210mm,
    paperheight=297mm,
    left=2.5cm,
    right=2.5cm,
    top=2.5cm,
    bottom=2.5cm,
    headheight=15pt,
    headsep=20pt,
    footskip=30pt
}

% ------------------------------------------------------------
% 基础宏包
% ------------------------------------------------------------
\RequirePackage{xeCJK}
\RequirePackage{setspace}           % 行距设置
\RequirePackage{fancyhdr}           % 页眉页脚
\RequirePackage{titlesec}           % 标题格式
\RequirePackage{tocloft}            % 目录格式
\RequirePackage{graphicx}           % 图片支持
\RequirePackage{amsmath,amssymb,amsfonts} % 数学公式
\RequirePackage{booktabs}           % 表格
\RequirePackage{longtable}          % 跨页表格
\RequirePackage{multirow}           % 表格多行合并
\RequirePackage{array}              % 表格增强
\RequirePackage{float}              % 浮动体控制
\RequirePackage{caption}            % 图表标题
\RequirePackage{subcaption}         % 子图标题
\RequirePackage{bicaption}           % 双语图表标题
\RequirePackage{hyperref}           % 超链接
\RequirePackage{enumitem}           % 列表环境
\RequirePackage{xcolor}             % 颜色
\RequirePackage{listings}           % 代码 listings
\RequirePackage{algorithm}          % 算法环境
\RequirePackage{algpseudocode}      % 算法伪代码
\RequirePackage{dirtree}            % 目录树结构

% ------------------------------------------------------------
% 参考文献设置
% ------------------------------------------------------------
\RequirePackage[sort&compress,numbers,super]{natbib}

% ------------------------------------------------------------
% 超链接设置
% ------------------------------------------------------------
\hypersetup{
    colorlinks=true,
    linkcolor=black,
    citecolor=black,
    urlcolor=blue,
    bookmarksopen=true,
    bookmarksnumbered=true,
    pdfborder={0 0 0}
}

% ------------------------------------------------------------
% 字体设置
% ------------------------------------------------------------
% 中文字体：宋体(正文)、黑体(标题)
\setCJKmainfont{SimSun}[AutoFakeBold=true,AutoFakeSlant=true]     % 宋体 - 正文
\setCJKsansfont{SimHei}[AutoFakeBold=true]                         % 黑体 - 标题
\setCJKmonofont{SimSun}                                             % 宋体 - 等宽备选

% 英文字体：Times New Roman
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\setmainfont{Times New Roman}   % 英文正文
\setsansfont{Arial}             % 英文无衬线
\setmonofont{Courier New}       % 英文等宽

% ------------------------------------------------------------
% 字号设置 (pt)
% ------------------------------------------------------------
\newcommand{\chuhao}{\fontsize{42pt}{50.4pt}\selectfont}      % 初号
\newcommand{\xiaochu}{\fontsize{36pt}{43.2pt}\selectfont}    % 小初
\newcommand{\yihao}{\fontsize{26pt}{31.2pt}\selectfont}      % 一号
\newcommand{\xiaoyi}{\fontsize{24pt}{28.8pt}\selectfont}     % 小一
\newcommand{\erhao}{\fontsize{22pt}{26.4pt}\selectfont}      % 二号
\newcommand{\xiaoer}{\fontsize{18pt}{21.6pt}\selectfont}     % 小二
\newcommand{\sanhao}{\fontsize{16pt}{19.2pt}\selectfont}     % 三号
\newcommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}      % 小三
\newcommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}      % 四号
\newcommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}     % 小四
\newcommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}    % 五号
\newcommand{\xiaowu}{\fontsize{9pt}{10.8pt}\selectfont}      % 小五

% ------------------------------------------------------------
% 行距设置
% ------------------------------------------------------------
\setstretch{1.5}    % 1.5倍行距

% ------------------------------------------------------------
% 章节标题格式设置
% ------------------------------------------------------------
\ctexset{
    chapter = {
        format = \centering\sffamily\xiaoer\bfseries,
        name = {第,章},
        number = \chinese{chapter},
        beforeskip = 24pt,
        afterskip = 18pt,
        pagestyle = fancy
    },
    section = {
        format = \sffamily\sanhao\bfseries,
        beforeskip = 12pt,
        afterskip = 6pt
    },
    subsection = {
        format = \sffamily\sihao\bfseries,
        beforeskip = 6pt,
        afterskip = 6pt
    },
    subsubsection = {
        format = \sffamily\xiaosi\bfseries,
        beforeskip = 6pt,
        afterskip = 6pt
    }
}

% ------------------------------------------------------------
% 目录格式设置
% ------------------------------------------------------------
\renewcommand{\cftchapfont}{\sffamily\xiaosi}
\renewcommand{\cftsecfont}{\xiaosi}
\renewcommand{\cftsubsecfont}{\xiaosi}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\setlength{\cftbeforechapskip}{6pt}
\setlength{\cftbeforesecskip}{3pt}
\setlength{\cftbeforesubsecskip}{3pt}

% ------------------------------------------------------------
% 页眉页脚设置
% ------------------------------------------------------------
\pagestyle{fancy}
\fancyhf{}
\fancyhead[C]{\xiaowu 心河大学学位论文}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0pt}

% 章节首页页眉页脚
\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[C]{\xiaowu 心河大学学位论文}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0.4pt}
}

% ------------------------------------------------------------
% 图表标题格式
% ------------------------------------------------------------
\captionsetup{
    font={small},
    labelfont={bf},
    labelsep=quad,
    skip=10pt
}
\captionsetup[figure]{name={图}}
\captionsetup[table]{name={表}}

% ------------------------------------------------------------
% 双语图表标题设置
% ------------------------------------------------------------
\DeclareCaptionOption{bi-first}[]{%
    \def\figurename{图}%
    \def\tablename{表}%
}
\DeclareCaptionOption{bi-second}[]{%
    \def\figurename{Figure}%
    \def\tablename{Table}%
}
\captionsetup[bi-first]{bi-first}
\captionsetup[bi-second]{bi-second}

% ------------------------------------------------------------
% 图表编号格式: 章-序号
% ------------------------------------------------------------
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}
\renewcommand{\theequation}{\thechapter-\arabic{equation}}
\makeatletter
\@addtoreset{figure}{chapter}
\@addtoreset{table}{chapter}
\@addtoreset{equation}{chapter}
\makeatother

% ------------------------------------------------------------
% 列表环境设置
% ------------------------------------------------------------
\setlist[enumerate]{
    label=(\arabic*),
    leftmargin=2em,
    itemsep=0pt,
    parsep=0pt
}
\setlist[itemize]{
    leftmargin=2em,
    itemsep=0pt,
    parsep=0pt
}

% ------------------------------------------------------------
% 代码环境设置
% ------------------------------------------------------------
\lstset{
    basicstyle=\small\ttfamily,
    keywordstyle=\color{blue}\bfseries,
    commentstyle=\color{gray},
    stringstyle=\color{red},
    numbers=left,
    numberstyle=\tiny,
    numbersep=8pt,
    frame=single,
    breaklines=true,
    showstringspaces=false,
    tabsize=4,
    captionpos=b
}

% ------------------------------------------------------------
% 数学定理环境
% ------------------------------------------------------------
\RequirePackage{amsthm}
\theoremstyle{definition}
\newtheorem{definition}{定义}[chapter]
\newtheorem{theorem}{定理}[chapter]
\newtheorem{lemma}{引理}[chapter]
\newtheorem{corollary}{推论}[chapter]
\newtheorem{proposition}{命题}[chapter]
\newtheorem{example}{例}[chapter]
\newtheorem{remark}{注}[chapter]

% ------------------------------------------------------------
% 封面信息命令
% ------------------------------------------------------------
\newcommand{\university}[1]{\gdef\@university{#1}}
\newcommand{\college}[1]{\gdef\@college{#1}}
\newcommand{\major}[1]{\gdef\@major{#1}}
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}
\newcommand{\degree}[1]{\gdef\@degree{#1}}
\newcommand{\submitdate}[1]{\gdef\@submitdate{#1}}

\university{XX大学}
\college{XX学院}
\major{XX专业}
\advisor{XXX教授}
\studentid{20XXXXXXXX}
\degree{硕士学位论文}
\submitdate{2026年3月}

% ------------------------------------------------------------
% 封面生成命令
% ------------------------------------------------------------
\newcommand{\makecover}{%
    \begin{titlepage}
        \centering
        \vspace*{1cm}
        
        % 学校名称
        {\zihao{-2}\bfseries\CJKfamily{zhsong}\@university}
        
        \vspace{1.5cm}
        
        % 学位类型
        {\zihao{2}\bfseries\CJKfamily{zhsong}\@degree}
        
        \vspace{3cm}
        
        % 论文题目
        {\zihao{-2}\bfseries\CJKfamily{zhsong}\@title}
        
        \vspace{4cm}
        
        % 作者信息
        {\zihao{4}
        \begin{tabular}{rl}
            \CJKfamily{zhsong}\textbf{学院名称：} & \CJKfamily{zhsong}\@college \\[0.8cm]
            \CJKfamily{zhsong}\textbf{专业名称：} & \CJKfamily{zhsong}\@major \\[0.8cm]
            \CJKfamily{zhsong}\textbf{作者姓名：} & \CJKfamily{zhsong}\@author \\[0.8cm]
            \CJKfamily{zhsong}\textbf{学\qquad 号：} & \CJKfamily{zhsong}\@studentid \\[0.8cm]
            \CJKfamily{zhsong}\textbf{指导教师：} & \CJKfamily{zhsong}\@advisor \\[0.8cm]
        \end{tabular}
        }
        
        \vfill
        
        % 提交日期
        {\zihao{4}\bfseries\CJKfamily{zhsong}\@submitdate}
        
    \end{titlepage}
}

% ============================================================
% 文档类结束
% ============================================================
