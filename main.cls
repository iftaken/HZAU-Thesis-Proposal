% ============================================================
% 华中农业大学学士学位论文开题报告书 LaTeX 文档类
% ============================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main}[2026/03/26 v1.0 HZAU Thesis Proposal Template]

% ------------------------------------------------------------
% 选项处理
% ------------------------------------------------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ExecuteOptions{}
\ProcessOptions\relax

% ------------------------------------------------------------
% 基础文档类 (ctexart 提供中文支持，单页文档)
% ------------------------------------------------------------
\LoadClass[UTF8,a4paper,12pt]{ctexart}

% ------------------------------------------------------------
% 页面设置
% ------------------------------------------------------------
\RequirePackage{geometry}
\geometry{
    paperwidth=210mm,
    paperheight=297mm,
    left=1.5cm,
    right=1.5cm,
    top=1.5cm,
    bottom=2.0cm,
}

% ------------------------------------------------------------
% 基础宏包
% ------------------------------------------------------------
\RequirePackage{xeCJK}
\RequirePackage{setspace}           % 行距设置
\RequirePackage{graphicx}           % 图片支持
\RequirePackage{amsmath,amssymb,amsfonts} % 数学公式
\RequirePackage{booktabs}           % 表格
\RequirePackage{multirow}           % 表格多行合并
\RequirePackage{array}              % 表格增强
\RequirePackage{tabularx}           % 自动调整列宽表格
\RequirePackage{makecell}           % 单元格内换行
\RequirePackage{enumitem}           % 列表环境
\RequirePackage{xcolor}             % 颜色

% ------------------------------------------------------------
% 字体设置
% ------------------------------------------------------------
% 中文字体：宋体(默认)、方正小标宋简体(大标题)、方正仿宋_GB2312(说明文字)
\setCJKmainfont{SimSun}[AutoFakeBold=true,AutoFakeSlant=true]           % 宋体 - 默认正文、小节标题、表格字段
\setCJKsansfont{方正小标宋简体}[Path=./font/]                           % 方正小标宋 - 大标题
\setCJKmonofont{方正仿宋_GB2312}[Path=./font/]                          % 方正仿宋 - 说明文字

% 定义方正仿宋字体族（用于说明文字）
\newCJKfontfamily\fzfs{方正仿宋_GB2312}[Path=./font/]

% 英文字体：Times New Roman
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

% ------------------------------------------------------------
% 字号设置 (pt)
% ------------------------------------------------------------
\newcommand{\xiaosan}{\fontsize{15pt}{18pt}\selectfont}      % 小三
\newcommand{\sihao}{\fontsize{14pt}{16.8pt}\selectfont}      % 四号
\newcommand{\xiaosi}{\fontsize{12pt}{14.4pt}\selectfont}     % 小四
\newcommand{\wuhao}{\fontsize{10.5pt}{12.6pt}\selectfont}    % 五号

% ------------------------------------------------------------
% 行距设置
% ------------------------------------------------------------
\setstretch{1.5}    % 1.5倍行距

% ------------------------------------------------------------
% 开题报告书信息命令
% ------------------------------------------------------------
\newcommand{\topicname}[1]{\gdef\@topicname{#1}}          % 题目
\newcommand{\studentname}[1]{\gdef\@studentname{#1}}      % 姓名
\newcommand{\studentid}[1]{\gdef\@studentid{#1}}          % 学号
\newcommand{\major}[1]{\gdef\@major{#1}}                  % 专业
\newcommand{\advisor}[1]{\gdef\@advisor{#1}}              % 指导教师
\newcommand{\advisorid}[1]{\gdef\@advisorid{#1}}          % 工号
\newcommand{\advisortitle}[1]{\gdef\@advisortitle{#1}}    % 职称
\newcommand{\topicsource}[1]{\gdef\@topicsource{#1}}      % 课题来源
\newcommand{\projectname}[1]{\gdef\@projectname{#1}}      % 依托项目名称

% 默认值
\topicname{}
\studentname{}
\studentid{}
\major{}
\advisor{}
\advisorid{}
\advisortitle{}
\topicsource{}
\projectname{}

% ------------------------------------------------------------
% 各部分内容的存储命令
% ------------------------------------------------------------
\newcommand{\scientificbasis}[1]{\gdef\@scientificbasis{#1}}        % 科学依据
\newcommand{\researchcontent}[1]{\gdef\@researchcontent{#1}}        % 研究内容
\newcommand{\researchmethod}[1]{\gdef\@researchmethod{#1}}          % 研究方法
\newcommand{\researchplan}[1]{\gdef\@researchplan{#1}}              % 研究计划
\newcommand{\advisoropinion}[1]{\gdef\@advisoropinion{#1}}          % 指导教师意见

\scientificbasis{}
\researchcontent{}
\researchmethod{}
\researchplan{}
\advisoropinion{}

% ------------------------------------------------------------
% 开题报告书生成命令（第一页）
% ------------------------------------------------------------
\newcommand{\makeproposal}{%
    \thispagestyle{empty}
    \begin{center}
        {\sffamily\zihao{-2} 华中农业大学学士学位论文开题报告书}
    \end{center}
    \vspace{-0.2cm}
    
    \noindent
    \begin{tabularx}{\textwidth}{|>{\centering\arraybackslash}p{5.5em}|X|>{\centering\arraybackslash}p{5.5em}|X|>{\centering\arraybackslash}p{5.5em}|X|}
        \hline
        \textbf{题\ \ \ \ \ \ \ \ 目} & \multicolumn{5}{c|}{\@topicname} \\
        \hline
        \textbf{姓\ \ \ \ \ \ \ \ 名} & \@studentname & \textbf{学\ \ \ \ 号} & \@studentid & \textbf{专\ \ \ \ 业} & \@major \\
        \hline
        \textbf{指导教师} & \@advisor & \textbf{工\ \ \ \ 号} & \@advisorid & \textbf{职\ \ \ \ 称} & \@advisortitle \\
        \hline
        \textbf{课题来源} & \@topicsource & \multicolumn{2}{c|}{\textbf{\makecell{依托或参加教师科研\\项目名称}}} & \multicolumn{2}{c|}{\@projectname} \\
        \hline
        % 科学依据部分
        \multicolumn{6}{|l|}{%
            \begin{minipage}[t]{\dimexpr\textwidth-2\tabcolsep-2\arrayrulewidth-0.5cm\relax}
                \vspace{0.1cm}
                {\bfseries 科学依据}{\fzfs\wuhao（包括课题的科学意义；国内外研究概况、水平和发展趋势；应用前景等）}
                \vspace{0.2cm}
                
                {\xiaosi\@scientificbasis}
                \vspace{2cm}
            \end{minipage}
        } \\
        \hline
        % 研究内容部分
        \multicolumn{6}{|l|}{%
            \begin{minipage}[t]{\dimexpr\textwidth-2\tabcolsep-2\arrayrulewidth-0.5cm\relax}
                \vspace{0.1cm}
                {\bfseries 研究内容}
                \vspace{0.2cm}
                
                {\xiaosi\@researchcontent}
                \vspace{1.5cm}
            \end{minipage}
        } \\
        \hline
    \end{tabularx}
}

% ------------------------------------------------------------
% 第二页生成命令
% ------------------------------------------------------------
\newcommand{\makeproposalsecondpage}{%
    \newpage
    \thispagestyle{empty}
    \noindent
    \begin{tabularx}{\textwidth}{|X|}
        \hline
        % 研究方法部分
        \begin{minipage}[t]{\dimexpr\textwidth-2\tabcolsep-2\arrayrulewidth-0.5cm\relax}
            {\bfseries 拟采取的研究方法、技术路线、实验方案及可行性分析}
            \vspace{0.2cm}
            
            {\xiaosi\@researchmethod}
            
            \vspace{0.3cm}
        \end{minipage} \\
        \hline
        % 研究计划部分
        \begin{minipage}[t]{\dimexpr\textwidth-2\tabcolsep-2\arrayrulewidth-0.5cm\relax}
            {\bfseries 研究计划及预期成果}
            \vspace{0.2cm}
            
            {\xiaosi\@researchplan}
            
            \vspace{0.3cm}
        \end{minipage} \\
        \hline
        % 指导教师意见部分
        \begin{minipage}[t]{\dimexpr\textwidth-2\tabcolsep-2\arrayrulewidth-0.5cm\relax}
            {\bfseries 指导教师意见}
            \vspace{0.2cm}
            
            \vspace{3cm}
            
            \vspace{0.2cm}
            \hfill
            \begin{tabular}{rl}
                \xiaosi 指导教师签名：& \makebox[3cm]{} \\[0.1cm]
                & \makebox[1cm]{} 年 \makebox[1cm]{} 月 \makebox[1cm]{} 日 \\
            \end{tabular}
        \end{minipage} \\
        \hline
    \end{tabularx}
}

% ============================================================
% 文档类结束
% ============================================================
